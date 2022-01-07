
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct atmel_pmecc_caps {int dummy; } ;
struct atmel_pmecc {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct atmel_pmecc*) ;
 int PTR_ERR (struct atmel_pmecc*) ;
 struct atmel_pmecc* atmel_pmecc_create (struct platform_device*,struct atmel_pmecc_caps const*,int ,int) ;
 int dev_err (struct device*,char*) ;
 struct atmel_pmecc_caps* of_device_get_match_data (struct device*) ;
 int platform_set_drvdata (struct platform_device*,struct atmel_pmecc*) ;

__attribute__((used)) static int atmel_pmecc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 const struct atmel_pmecc_caps *caps;
 struct atmel_pmecc *pmecc;

 caps = of_device_get_match_data(&pdev->dev);
 if (!caps) {
  dev_err(dev, "Invalid caps\n");
  return -EINVAL;
 }

 pmecc = atmel_pmecc_create(pdev, caps, 0, 1);
 if (IS_ERR(pmecc))
  return PTR_ERR(pmecc);

 platform_set_drvdata(pdev, pmecc);

 return 0;
}
