
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_omap_platform_data {int* port_mode; } ;
struct usbhs_hcd_omap {int nports; int * utmi_clk; int * hsic480m_clk; int * hsic60m_clk; int ehci_logic_fck; struct usbhs_omap_platform_data* pdata; } ;
struct device {int dummy; } ;


 int IS_ERR (int ) ;


 int clk_prepare_enable (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int,int) ;
 struct usbhs_hcd_omap* dev_get_drvdata (struct device*) ;
 int omap_tll_enable (struct usbhs_omap_platform_data*) ;

__attribute__((used)) static int usbhs_runtime_resume(struct device *dev)
{
 struct usbhs_hcd_omap *omap = dev_get_drvdata(dev);
 struct usbhs_omap_platform_data *pdata = omap->pdata;
 int i, r;

 dev_dbg(dev, "usbhs_runtime_resume\n");

 omap_tll_enable(pdata);

 if (!IS_ERR(omap->ehci_logic_fck))
  clk_prepare_enable(omap->ehci_logic_fck);

 for (i = 0; i < omap->nports; i++) {
  switch (pdata->port_mode[i]) {
  case 129:
   if (!IS_ERR(omap->hsic60m_clk[i])) {
    r = clk_prepare_enable(omap->hsic60m_clk[i]);
    if (r) {
     dev_err(dev,
      "Can't enable port %d hsic60m clk:%d\n",
      i, r);
    }
   }

   if (!IS_ERR(omap->hsic480m_clk[i])) {
    r = clk_prepare_enable(omap->hsic480m_clk[i]);
    if (r) {
     dev_err(dev,
      "Can't enable port %d hsic480m clk:%d\n",
      i, r);
    }
   }


  case 128:
   if (!IS_ERR(omap->utmi_clk[i])) {
    r = clk_prepare_enable(omap->utmi_clk[i]);
    if (r) {
     dev_err(dev,
      "Can't enable port %d clk : %d\n",
      i, r);
    }
   }
   break;
  default:
   break;
  }
 }

 return 0;
}
