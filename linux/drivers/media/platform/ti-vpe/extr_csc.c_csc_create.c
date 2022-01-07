
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct csc_data {int base; int * res; struct platform_device* pdev; } ;


 int ENODEV ;
 int ENOMEM ;
 struct csc_data* ERR_CAST (int ) ;
 struct csc_data* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int devm_ioremap_resource (int *,int *) ;
 struct csc_data* devm_kzalloc (int *,int,int ) ;
 int * platform_get_resource_byname (struct platform_device*,int ,char const*) ;

struct csc_data *csc_create(struct platform_device *pdev, const char *res_name)
{
 struct csc_data *csc;

 dev_dbg(&pdev->dev, "csc_create\n");

 csc = devm_kzalloc(&pdev->dev, sizeof(*csc), GFP_KERNEL);
 if (!csc) {
  dev_err(&pdev->dev, "couldn't alloc csc_data\n");
  return ERR_PTR(-ENOMEM);
 }

 csc->pdev = pdev;

 csc->res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
      res_name);
 if (csc->res == ((void*)0)) {
  dev_err(&pdev->dev, "missing '%s' platform resources data\n",
   res_name);
  return ERR_PTR(-ENODEV);
 }

 csc->base = devm_ioremap_resource(&pdev->dev, csc->res);
 if (IS_ERR(csc->base)) {
  dev_err(&pdev->dev, "failed to ioremap\n");
  return ERR_CAST(csc->base);
 }

 return csc;
}
