
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtll_omap {int nch; int * ch_clk; } ;
struct usbhs_omap_platform_data {int * port_mode; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*,int,int) ;
 struct usbtll_omap* dev_get_drvdata (int ) ;
 scalar_t__ omap_usb_mode_needs_tll (int ) ;
 int pm_runtime_get_sync (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tll_dev ;
 int tll_lock ;

int omap_tll_enable(struct usbhs_omap_platform_data *pdata)
{
 int i;
 struct usbtll_omap *tll;

 if (!tll_dev)
  return -ENODEV;

 pm_runtime_get_sync(tll_dev);

 spin_lock(&tll_lock);
 tll = dev_get_drvdata(tll_dev);

 for (i = 0; i < tll->nch; i++) {
  if (omap_usb_mode_needs_tll(pdata->port_mode[i])) {
   int r;

   if (IS_ERR(tll->ch_clk[i]))
    continue;

   r = clk_enable(tll->ch_clk[i]);
   if (r) {
    dev_err(tll_dev,
     "Error enabling ch %d clock: %d\n", i, r);
   }
  }
 }

 spin_unlock(&tll_lock);

 return 0;
}
