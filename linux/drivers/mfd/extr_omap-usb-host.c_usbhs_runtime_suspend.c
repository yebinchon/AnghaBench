
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_omap_platform_data {int* port_mode; } ;
struct usbhs_hcd_omap {int nports; int ehci_logic_fck; int * utmi_clk; int * hsic480m_clk; int * hsic60m_clk; struct usbhs_omap_platform_data* pdata; } ;
struct device {int dummy; } ;


 int IS_ERR (int ) ;


 int clk_disable_unprepare (int ) ;
 int dev_dbg (struct device*,char*) ;
 struct usbhs_hcd_omap* dev_get_drvdata (struct device*) ;
 int omap_tll_disable (struct usbhs_omap_platform_data*) ;

__attribute__((used)) static int usbhs_runtime_suspend(struct device *dev)
{
 struct usbhs_hcd_omap *omap = dev_get_drvdata(dev);
 struct usbhs_omap_platform_data *pdata = omap->pdata;
 int i;

 dev_dbg(dev, "usbhs_runtime_suspend\n");

 for (i = 0; i < omap->nports; i++) {
  switch (pdata->port_mode[i]) {
  case 129:
   if (!IS_ERR(omap->hsic60m_clk[i]))
    clk_disable_unprepare(omap->hsic60m_clk[i]);

   if (!IS_ERR(omap->hsic480m_clk[i]))
    clk_disable_unprepare(omap->hsic480m_clk[i]);


  case 128:
   if (!IS_ERR(omap->utmi_clk[i]))
    clk_disable_unprepare(omap->utmi_clk[i]);
   break;
  default:
   break;
  }
 }

 if (!IS_ERR(omap->ehci_logic_fck))
  clk_disable_unprepare(omap->ehci_logic_fck);

 omap_tll_disable(pdata);

 return 0;
}
