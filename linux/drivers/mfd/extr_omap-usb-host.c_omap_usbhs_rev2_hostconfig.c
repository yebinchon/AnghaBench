
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_omap_platform_data {int * port_mode; } ;
struct usbhs_hcd_omap {int nports; struct usbhs_omap_platform_data* pdata; } ;


 int OMAP4_P1_MODE_CLEAR ;
 int OMAP4_P1_MODE_HSIC ;
 int OMAP4_P1_MODE_TLL ;
 scalar_t__ is_ehci_hsic_mode (int ) ;
 scalar_t__ is_ehci_tll_mode (int ) ;
 scalar_t__ is_ohci_port (int ) ;

__attribute__((used)) static unsigned omap_usbhs_rev2_hostconfig(struct usbhs_hcd_omap *omap,
      unsigned reg)
{
 struct usbhs_omap_platform_data *pdata = omap->pdata;
 int i;

 for (i = 0; i < omap->nports; i++) {

  reg &= ~(OMAP4_P1_MODE_CLEAR << 2 * i);

  if (is_ehci_tll_mode(pdata->port_mode[i]) ||
    (is_ohci_port(pdata->port_mode[i])))
   reg |= OMAP4_P1_MODE_TLL << 2 * i;
  else if (is_ehci_hsic_mode(pdata->port_mode[i]))
   reg |= OMAP4_P1_MODE_HSIC << 2 * i;
 }

 return reg;
}
