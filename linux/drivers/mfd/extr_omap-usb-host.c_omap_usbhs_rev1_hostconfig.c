
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_omap_platform_data {int* port_mode; scalar_t__ single_ulpi_bypass; } ;
struct usbhs_hcd_omap {int nports; struct usbhs_omap_platform_data* pdata; } ;



 int OMAP_UHH_HOSTCONFIG_P1_CONNECT_STATUS ;
 unsigned int OMAP_UHH_HOSTCONFIG_ULPI_BYPASS ;
 unsigned int OMAP_UHH_HOSTCONFIG_ULPI_P1_BYPASS ;
 int OMAP_UHH_HOSTCONFIG_ULPI_P2_BYPASS ;

 scalar_t__ is_ehci_phy_mode (int) ;

__attribute__((used)) static unsigned omap_usbhs_rev1_hostconfig(struct usbhs_hcd_omap *omap,
      unsigned reg)
{
 struct usbhs_omap_platform_data *pdata = omap->pdata;
 int i;

 for (i = 0; i < omap->nports; i++) {
  switch (pdata->port_mode[i]) {
  case 128:
   reg &= ~(OMAP_UHH_HOSTCONFIG_P1_CONNECT_STATUS << i);
   break;
  case 129:
   if (pdata->single_ulpi_bypass)
    break;

   if (i == 0)
    reg &= ~OMAP_UHH_HOSTCONFIG_ULPI_P1_BYPASS;
   else
    reg &= ~(OMAP_UHH_HOSTCONFIG_ULPI_P2_BYPASS
        << (i-1));
   break;
  default:
   if (pdata->single_ulpi_bypass)
    break;

   if (i == 0)
    reg |= OMAP_UHH_HOSTCONFIG_ULPI_P1_BYPASS;
   else
    reg |= OMAP_UHH_HOSTCONFIG_ULPI_P2_BYPASS
        << (i-1);
   break;
  }
 }

 if (pdata->single_ulpi_bypass) {

  reg |= OMAP_UHH_HOSTCONFIG_ULPI_BYPASS;

  for (i = 0; i < omap->nports; i++) {
   if (is_ehci_phy_mode(pdata->port_mode[i])) {
    reg &= ~OMAP_UHH_HOSTCONFIG_ULPI_BYPASS;
    break;
   }
  }
 }

 return reg;
}
