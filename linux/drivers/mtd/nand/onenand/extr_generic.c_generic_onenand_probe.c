
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; struct resource* resource; } ;
struct onenand_platform_data {int nr_parts; int * parts; int * mmcontrol; } ;
struct TYPE_6__ {int base; int irq; int * mmcontrol; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_7__ {TYPE_2__* priv; TYPE_1__ dev; } ;
struct onenand_info {TYPE_2__ onenand; TYPE_3__ mtd; } ;


 int EBUSY ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 struct onenand_platform_data* dev_get_platdata (int *) ;
 int dev_name (int *) ;
 int ioremap (int ,unsigned long) ;
 int iounmap (int ) ;
 int kfree (struct onenand_info*) ;
 struct onenand_info* kzalloc (int,int ) ;
 int mtd_device_register (TYPE_3__*,int *,int ) ;
 scalar_t__ onenand_scan (TYPE_3__*,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct onenand_info*) ;
 int release_mem_region (int ,unsigned long) ;
 int request_mem_region (int ,unsigned long,int ) ;
 unsigned long resource_size (struct resource*) ;

__attribute__((used)) static int generic_onenand_probe(struct platform_device *pdev)
{
 struct onenand_info *info;
 struct onenand_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct resource *res = pdev->resource;
 unsigned long size = resource_size(res);
 int err;

 info = kzalloc(sizeof(struct onenand_info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 if (!request_mem_region(res->start, size, dev_name(&pdev->dev))) {
  err = -EBUSY;
  goto out_free_info;
 }

 info->onenand.base = ioremap(res->start, size);
 if (!info->onenand.base) {
  err = -ENOMEM;
  goto out_release_mem_region;
 }

 info->onenand.mmcontrol = pdata ? pdata->mmcontrol : ((void*)0);
 info->onenand.irq = platform_get_irq(pdev, 0);

 info->mtd.dev.parent = &pdev->dev;
 info->mtd.priv = &info->onenand;

 if (onenand_scan(&info->mtd, 1)) {
  err = -ENXIO;
  goto out_iounmap;
 }

 err = mtd_device_register(&info->mtd, pdata ? pdata->parts : ((void*)0),
      pdata ? pdata->nr_parts : 0);

 platform_set_drvdata(pdev, info);

 return 0;

out_iounmap:
 iounmap(info->onenand.base);
out_release_mem_region:
 release_mem_region(res->start, size);
out_free_info:
 kfree(info);

 return err;
}
