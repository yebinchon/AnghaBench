
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_data {int base; int res; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 struct sc_data* ERR_CAST (int ) ;
 struct sc_data* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int devm_ioremap_resource (int *,int ) ;
 struct sc_data* devm_kzalloc (int *,int,int ) ;
 int platform_get_resource_byname (struct platform_device*,int ,char const*) ;

struct sc_data *sc_create(struct platform_device *pdev, const char *res_name)
{
 struct sc_data *sc;

 dev_dbg(&pdev->dev, "sc_create\n");

 sc = devm_kzalloc(&pdev->dev, sizeof(*sc), GFP_KERNEL);
 if (!sc) {
  dev_err(&pdev->dev, "couldn't alloc sc_data\n");
  return ERR_PTR(-ENOMEM);
 }

 sc->pdev = pdev;

 sc->res = platform_get_resource_byname(pdev, IORESOURCE_MEM, res_name);
 if (!sc->res) {
  dev_err(&pdev->dev, "missing '%s' platform resources data\n",
   res_name);
  return ERR_PTR(-ENODEV);
 }

 sc->base = devm_ioremap_resource(&pdev->dev, sc->res);
 if (IS_ERR(sc->base)) {
  dev_err(&pdev->dev, "failed to ioremap\n");
  return ERR_CAST(sc->base);
 }

 return sc;
}
