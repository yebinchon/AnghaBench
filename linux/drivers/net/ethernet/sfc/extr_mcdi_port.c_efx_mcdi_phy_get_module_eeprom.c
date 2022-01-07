
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ethtool_eeprom {scalar_t__ len; int offset; } ;
struct efx_nic {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int EOPNOTSUPP ;


 int SFF_8079_NUM_PAGES ;
 int SFF_8436_NUM_PAGES ;
 int SFF_8472_NUM_PAGES ;
 int SFP_PAGE_SIZE ;
 int efx_mcdi_phy_get_module_eeprom_page (struct efx_nic*,int,int *,unsigned int,scalar_t__) ;
 int efx_mcdi_phy_module_type (struct efx_nic*) ;
 int efx_mcdi_phy_sff_8472_level (struct efx_nic*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int efx_mcdi_phy_get_module_eeprom(struct efx_nic *efx,
       struct ethtool_eeprom *ee, u8 *data)
{
 int rc;
 ssize_t space_remaining = ee->len;
 unsigned int page_off;
 bool ignore_missing;
 int num_pages;
 int page;

 switch (efx_mcdi_phy_module_type(efx)) {
 case 128:
  num_pages = efx_mcdi_phy_sff_8472_level(efx) > 0 ?
    SFF_8472_NUM_PAGES : SFF_8079_NUM_PAGES;
  page = 0;
  ignore_missing = 0;
  break;
 case 129:
  num_pages = SFF_8436_NUM_PAGES;
  page = -1;
  ignore_missing = 1;
  break;
 default:
  return -EOPNOTSUPP;
 }

 page_off = ee->offset % SFP_PAGE_SIZE;
 page += ee->offset / SFP_PAGE_SIZE;

 while (space_remaining && (page < num_pages)) {
  rc = efx_mcdi_phy_get_module_eeprom_page(efx, page,
        data, page_off,
        space_remaining);

  if (rc > 0) {
   space_remaining -= rc;
   data += rc;
   page_off = 0;
   page++;
  } else if (rc == 0) {
   space_remaining = 0;
  } else if (ignore_missing && (page > 0)) {
   int intended_size = SFP_PAGE_SIZE - page_off;

   space_remaining -= intended_size;
   if (space_remaining < 0) {
    space_remaining = 0;
   } else {
    memset(data, 0, intended_size);
    data += intended_size;
    page_off = 0;
    page++;
    rc = 0;
   }
  } else {
   return rc;
  }
 }

 return 0;
}
