
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_info {int mtd; } ;
struct platform_device {int dev; } ;
struct flash_platform_data {int nr_parts; int parts; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct sa_info*) ;
 int PTR_ERR (struct sa_info*) ;
 struct flash_platform_data* dev_get_platdata (int *) ;
 int mtd_device_parse_register (int ,int ,int *,int ,int ) ;
 int part_probes ;
 int platform_set_drvdata (struct platform_device*,struct sa_info*) ;
 struct sa_info* sa1100_setup_mtd (struct platform_device*,struct flash_platform_data*) ;

__attribute__((used)) static int sa1100_mtd_probe(struct platform_device *pdev)
{
 struct flash_platform_data *plat = dev_get_platdata(&pdev->dev);
 struct sa_info *info;
 int err;

 if (!plat)
  return -ENODEV;

 info = sa1100_setup_mtd(pdev, plat);
 if (IS_ERR(info)) {
  err = PTR_ERR(info);
  goto out;
 }




 mtd_device_parse_register(info->mtd, part_probes, ((void*)0), plat->parts,
      plat->nr_parts);

 platform_set_drvdata(pdev, info);
 err = 0;

 out:
 return err;
}
