
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtll_omap {int nch; int * ch_clk; } ;
struct usbhs_omap_platform_data {int * port_mode; } ;


 int ENODEV ;
 int IS_ERR (int ) ;
 int clk_disable (int ) ;
 struct usbtll_omap* dev_get_drvdata (int ) ;
 scalar_t__ omap_usb_mode_needs_tll (int ) ;
 int pm_runtime_put_sync (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tll_dev ;
 int tll_lock ;

int omap_tll_disable(struct usbhs_omap_platform_data *pdata)
{
 int i;
 struct usbtll_omap *tll;

 if (!tll_dev)
  return -ENODEV;

 spin_lock(&tll_lock);
 tll = dev_get_drvdata(tll_dev);

 for (i = 0; i < tll->nch; i++) {
  if (omap_usb_mode_needs_tll(pdata->port_mode[i])) {
   if (!IS_ERR(tll->ch_clk[i]))
    clk_disable(tll->ch_clk[i]);
  }
 }

 spin_unlock(&tll_lock);
 pm_runtime_put_sync(tll_dev);

 return 0;
}
