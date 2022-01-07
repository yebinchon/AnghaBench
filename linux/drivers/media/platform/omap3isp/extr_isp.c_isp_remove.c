
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct isp_device {int notifier; int crashed; } ;


 int __omap3isp_get (struct isp_device*,int) ;
 int __omap3isp_put (struct isp_device*,int) ;
 int isp_cleanup_modules (struct isp_device*) ;
 int isp_detach_iommu (struct isp_device*) ;
 int isp_unregister_entities (struct isp_device*) ;
 int isp_xclk_cleanup (struct isp_device*) ;
 int kfree (struct isp_device*) ;
 int media_entity_enum_cleanup (int *) ;
 struct isp_device* platform_get_drvdata (struct platform_device*) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;

__attribute__((used)) static int isp_remove(struct platform_device *pdev)
{
 struct isp_device *isp = platform_get_drvdata(pdev);

 v4l2_async_notifier_unregister(&isp->notifier);
 isp_unregister_entities(isp);
 isp_cleanup_modules(isp);
 isp_xclk_cleanup(isp);

 __omap3isp_get(isp, 0);
 isp_detach_iommu(isp);
 __omap3isp_put(isp, 0);

 media_entity_enum_cleanup(&isp->crashed);
 v4l2_async_notifier_cleanup(&isp->notifier);

 kfree(isp);

 return 0;
}
