
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct intel_msic {struct platform_device* pdev; } ;


 int mfd_remove_devices (int *) ;

__attribute__((used)) static void intel_msic_remove_devices(struct intel_msic *msic)
{
 struct platform_device *pdev = msic->pdev;

 mfd_remove_devices(&pdev->dev);
}
