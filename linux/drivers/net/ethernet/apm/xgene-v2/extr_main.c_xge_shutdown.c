
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int ndev; } ;
struct platform_device {int dummy; } ;


 struct xge_pdata* platform_get_drvdata (struct platform_device*) ;
 int xge_remove (struct platform_device*) ;

__attribute__((used)) static void xge_shutdown(struct platform_device *pdev)
{
 struct xge_pdata *pdata;

 pdata = platform_get_drvdata(pdev);
 if (!pdata)
  return;

 if (!pdata->ndev)
  return;

 xge_remove(pdev);
}
