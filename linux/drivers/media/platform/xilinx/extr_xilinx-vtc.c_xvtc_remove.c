
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvtc_device {int xvip; } ;
struct platform_device {int dummy; } ;


 struct xvtc_device* platform_get_drvdata (struct platform_device*) ;
 int xvip_cleanup_resources (int *) ;
 int xvtc_unregister_device (struct xvtc_device*) ;

__attribute__((used)) static int xvtc_remove(struct platform_device *pdev)
{
 struct xvtc_device *xvtc = platform_get_drvdata(pdev);

 xvtc_unregister_device(xvtc);

 xvip_cleanup_resources(&xvtc->xvip);

 return 0;
}
