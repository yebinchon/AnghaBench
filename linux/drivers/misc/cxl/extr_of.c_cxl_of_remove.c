
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct cxl {int slices; int * afu; } ;


 int cxl_guest_remove_adapter (struct cxl*) ;
 int cxl_guest_remove_afu (int ) ;
 struct cxl* dev_get_drvdata (int *) ;

__attribute__((used)) static int cxl_of_remove(struct platform_device *pdev)
{
 struct cxl *adapter;
 int afu;

 adapter = dev_get_drvdata(&pdev->dev);
 for (afu = 0; afu < adapter->slices; afu++)
  cxl_guest_remove_afu(adapter->afu[afu]);

 cxl_guest_remove_adapter(adapter);
 return 0;
}
