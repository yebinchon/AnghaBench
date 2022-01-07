
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct atmel_pmecc {int dummy; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 struct atmel_pmecc* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int devm_atmel_pmecc_put ;
 int devres_add (struct device*,struct atmel_pmecc**) ;
 struct atmel_pmecc** devres_alloc (int ,int,int ) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct atmel_pmecc* platform_get_drvdata (struct platform_device*) ;
 int put_device (int *) ;

__attribute__((used)) static struct atmel_pmecc *atmel_pmecc_get_by_node(struct device *userdev,
         struct device_node *np)
{
 struct platform_device *pdev;
 struct atmel_pmecc *pmecc, **ptr;
 int ret;

 pdev = of_find_device_by_node(np);
 if (!pdev)
  return ERR_PTR(-EPROBE_DEFER);
 pmecc = platform_get_drvdata(pdev);
 if (!pmecc) {
  ret = -EPROBE_DEFER;
  goto err_put_device;
 }

 ptr = devres_alloc(devm_atmel_pmecc_put, sizeof(*ptr), GFP_KERNEL);
 if (!ptr) {
  ret = -ENOMEM;
  goto err_put_device;
 }

 *ptr = pmecc;

 devres_add(userdev, ptr);

 return pmecc;

err_put_device:
 put_device(&pdev->dev);
 return ERR_PTR(ret);
}
