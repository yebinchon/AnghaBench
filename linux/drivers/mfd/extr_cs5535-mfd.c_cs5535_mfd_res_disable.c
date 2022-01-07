
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;


 int EIO ;
 int IORESOURCE_IO ;
 int dev_err (int *,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int cs5535_mfd_res_disable(struct platform_device *pdev)
{
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!res) {
  dev_err(&pdev->dev, "can't fetch device resource info\n");
  return -EIO;
 }

 release_region(res->start, resource_size(res));
 return 0;
}
