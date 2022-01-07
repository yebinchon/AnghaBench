
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct spi_device {int dev; } ;
struct preamble_cfg_sfr {int timeout_symbols; int acquisition_symbols; int search_symbols; } ;


 scalar_t__ CA8210_SFR_LNAGX40 ;
 scalar_t__ CA8210_SFR_LNAGX41 ;
 scalar_t__ CA8210_SFR_LNAGX42 ;
 scalar_t__ CA8210_SFR_LNAGX43 ;
 scalar_t__ CA8210_SFR_LNAGX44 ;
 scalar_t__ CA8210_SFR_LNAGX45 ;
 scalar_t__ CA8210_SFR_LNAGX46 ;
 scalar_t__ CA8210_SFR_LNAGX47 ;
 scalar_t__ CA8210_SFR_PACFGIB ;
 scalar_t__ CA8210_SFR_PRECFG ;
 scalar_t__ CA8210_SFR_PTHRH ;
 scalar_t__ LNAGX40_DEFAULT_GAIN ;
 scalar_t__ LNAGX41_DEFAULT_GAIN ;
 scalar_t__ LNAGX42_DEFAULT_GAIN ;
 scalar_t__ LNAGX43_DEFAULT_GAIN ;
 scalar_t__ LNAGX44_DEFAULT_GAIN ;
 scalar_t__ LNAGX45_DEFAULT_GAIN ;
 scalar_t__ LNAGX46_DEFAULT_GAIN ;
 scalar_t__ LNAGX47_DEFAULT_GAIN ;
 scalar_t__ MAC_SUCCESS ;
 scalar_t__ PACFGIB_DEFAULT_CURRENT ;
 scalar_t__ PTHRH_DEFAULT_THRESHOLD ;
 int dev_err (int *,char*,scalar_t__,scalar_t__) ;
 scalar_t__ tdme_setsfr_request_sync (int,scalar_t__,scalar_t__,void*) ;

__attribute__((used)) static u8 tdme_chipinit(void *device_ref)
{
 u8 status = MAC_SUCCESS;
 u8 sfr_address;
 struct spi_device *spi = device_ref;
 struct preamble_cfg_sfr pre_cfg_value = {
  .timeout_symbols = 3,
  .acquisition_symbols = 3,
  .search_symbols = 1,
 };

 status = tdme_setsfr_request_sync(
  1, (sfr_address = CA8210_SFR_LNAGX40),
  LNAGX40_DEFAULT_GAIN, device_ref);
 if (status)
  goto finish;
 status = tdme_setsfr_request_sync(
  1, (sfr_address = CA8210_SFR_LNAGX41),
  LNAGX41_DEFAULT_GAIN, device_ref);
 if (status)
  goto finish;
 status = tdme_setsfr_request_sync(
  1, (sfr_address = CA8210_SFR_LNAGX42),
  LNAGX42_DEFAULT_GAIN, device_ref);
 if (status)
  goto finish;
 status = tdme_setsfr_request_sync(
  1, (sfr_address = CA8210_SFR_LNAGX43),
  LNAGX43_DEFAULT_GAIN, device_ref);
 if (status)
  goto finish;
 status = tdme_setsfr_request_sync(
  1, (sfr_address = CA8210_SFR_LNAGX44),
  LNAGX44_DEFAULT_GAIN, device_ref);
 if (status)
  goto finish;
 status = tdme_setsfr_request_sync(
  1, (sfr_address = CA8210_SFR_LNAGX45),
  LNAGX45_DEFAULT_GAIN, device_ref);
 if (status)
  goto finish;
 status = tdme_setsfr_request_sync(
  1, (sfr_address = CA8210_SFR_LNAGX46),
  LNAGX46_DEFAULT_GAIN, device_ref);
 if (status)
  goto finish;
 status = tdme_setsfr_request_sync(
  1, (sfr_address = CA8210_SFR_LNAGX47),
  LNAGX47_DEFAULT_GAIN, device_ref);
 if (status)
  goto finish;

 status = tdme_setsfr_request_sync(
  1, (sfr_address = CA8210_SFR_PRECFG),
  *((u8 *)&pre_cfg_value), device_ref);
 if (status)
  goto finish;

 status = tdme_setsfr_request_sync(
  1, (sfr_address = CA8210_SFR_PTHRH),
  PTHRH_DEFAULT_THRESHOLD, device_ref);
 if (status)
  goto finish;

 status = tdme_setsfr_request_sync(
  0, (sfr_address = CA8210_SFR_PACFGIB),
  PACFGIB_DEFAULT_CURRENT, device_ref);
 if (status)
  goto finish;

finish:
 if (status != MAC_SUCCESS) {
  dev_err(
   &spi->dev,
   "failed to set sfr at %#03x, status = %#03x\n",
   sfr_address,
   status
  );
 }
 return status;
}
