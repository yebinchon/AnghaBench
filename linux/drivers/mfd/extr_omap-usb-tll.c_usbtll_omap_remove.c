
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtll_omap {int nch; int * ch_clk; } ;
struct platform_device {int dev; } ;


 int IS_ERR (int ) ;
 int clk_put (int ) ;
 int clk_unprepare (int ) ;
 struct usbtll_omap* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int * tll_dev ;
 int tll_lock ;

__attribute__((used)) static int usbtll_omap_remove(struct platform_device *pdev)
{
 struct usbtll_omap *tll = platform_get_drvdata(pdev);
 int i;

 spin_lock(&tll_lock);
 tll_dev = ((void*)0);
 spin_unlock(&tll_lock);

 for (i = 0; i < tll->nch; i++) {
  if (!IS_ERR(tll->ch_clk[i])) {
   clk_unprepare(tll->ch_clk[i]);
   clk_put(tll->ch_clk[i]);
  }
 }

 pm_runtime_disable(&pdev->dev);
 return 0;
}
