
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {int ndev; } ;
struct platform_device {int dummy; } ;


 struct xgene_enet_pdata* platform_get_drvdata (struct platform_device*) ;
 int xgene_enet_remove (struct platform_device*) ;

__attribute__((used)) static void xgene_enet_shutdown(struct platform_device *pdev)
{
 struct xgene_enet_pdata *pdata;

 pdata = platform_get_drvdata(pdev);
 if (!pdata)
  return;

 if (!pdata->ndev)
  return;

 xgene_enet_remove(pdev);
}
