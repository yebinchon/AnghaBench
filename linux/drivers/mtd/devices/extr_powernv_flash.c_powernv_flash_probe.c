
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct powernv_flash* priv; } ;
struct powernv_flash {TYPE_1__ mtd; int id; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct powernv_flash*) ;
 struct powernv_flash* devm_kzalloc (struct device*,int,int ) ;
 int mtd_device_register (TYPE_1__*,int *,int ) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int powernv_flash_set_driver_info (struct device*,TYPE_1__*) ;

__attribute__((used)) static int powernv_flash_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct powernv_flash *data;
 int ret;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->mtd.priv = data;

 ret = of_property_read_u32(dev->of_node, "ibm,opal-id", &(data->id));
 if (ret) {
  dev_err(dev, "no device property 'ibm,opal-id'\n");
  return ret;
 }

 ret = powernv_flash_set_driver_info(dev, &data->mtd);
 if (ret)
  return ret;

 dev_set_drvdata(dev, data);






 return mtd_device_register(&data->mtd, ((void*)0), 0);
}
