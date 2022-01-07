
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {int clk; TYPE_1__* pdev; } ;
struct device {scalar_t__ of_node; } ;
struct TYPE_2__ {struct device dev; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void xgene_enet_shutdown(struct xgene_enet_pdata *pdata)
{
 struct device *dev = &pdata->pdev->dev;

 if (dev->of_node) {
  if (!IS_ERR(pdata->clk))
   clk_disable_unprepare(pdata->clk);
 }
}
