
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_device {int dev; } ;
struct ac100_dev {int * dev; int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_NONE ;
 int PTR_ERR (int ) ;
 int ac100_cells ;
 int ac100_regmap_config ;
 int dev_err (int *,char*,int) ;
 struct ac100_dev* devm_kzalloc (int *,int,int ) ;
 int devm_mfd_add_devices (int *,int ,int ,int ,int *,int ,int *) ;
 int devm_regmap_init_sunxi_rsb (struct sunxi_rsb_device*,int *) ;
 int sunxi_rsb_device_set_drvdata (struct sunxi_rsb_device*,struct ac100_dev*) ;

__attribute__((used)) static int ac100_rsb_probe(struct sunxi_rsb_device *rdev)
{
 struct ac100_dev *ac100;
 int ret;

 ac100 = devm_kzalloc(&rdev->dev, sizeof(*ac100), GFP_KERNEL);
 if (!ac100)
  return -ENOMEM;

 ac100->dev = &rdev->dev;
 sunxi_rsb_device_set_drvdata(rdev, ac100);

 ac100->regmap = devm_regmap_init_sunxi_rsb(rdev, &ac100_regmap_config);
 if (IS_ERR(ac100->regmap)) {
  ret = PTR_ERR(ac100->regmap);
  dev_err(ac100->dev, "regmap init failed: %d\n", ret);
  return ret;
 }

 ret = devm_mfd_add_devices(ac100->dev, PLATFORM_DEVID_NONE, ac100_cells,
       ARRAY_SIZE(ac100_cells), ((void*)0), 0, ((void*)0));
 if (ret) {
  dev_err(ac100->dev, "failed to add MFD devices: %d\n", ret);
  return ret;
 }

 return 0;
}
