
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_8__ {unsigned long size; int virt; int phys; int bankwidth; int name; } ;
struct rbtx4939_flash_info {TYPE_4__* mtd; TYPE_2__ map; } ;
struct rbtx4939_flash_data {int nr_parts; int parts; int (* map_init ) (TYPE_2__*) ;int width; } ;
struct platform_device {int dev; } ;
struct TYPE_7__ {int * parent; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int dev_err (int *,char*) ;
 struct rbtx4939_flash_data* dev_get_platdata (int *) ;
 int dev_name (int *) ;
 int devm_ioremap (int *,int ,unsigned long) ;
 struct rbtx4939_flash_info* devm_kzalloc (int *,int,int ) ;
 int devm_request_mem_region (int *,int ,unsigned long,int ) ;
 TYPE_4__* do_map_probe (char const* const,TYPE_2__*) ;
 int mtd_device_register (TYPE_4__*,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rbtx4939_flash_info*) ;
 int pr_notice (char*,struct resource*) ;
 int rbtx4939_flash_remove (struct platform_device*) ;
 unsigned long resource_size (struct resource*) ;
 char** rom_probe_types ;
 int simple_map_init (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int rbtx4939_flash_probe(struct platform_device *dev)
{
 struct rbtx4939_flash_data *pdata;
 struct rbtx4939_flash_info *info;
 struct resource *res;
 const char * const *probe_type;
 int err = 0;
 unsigned long size;

 pdata = dev_get_platdata(&dev->dev);
 if (!pdata)
  return -ENODEV;

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;
 info = devm_kzalloc(&dev->dev, sizeof(struct rbtx4939_flash_info),
       GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 platform_set_drvdata(dev, info);

 size = resource_size(res);
 pr_notice("rbtx4939 platform flash device: %pR\n", res);

 if (!devm_request_mem_region(&dev->dev, res->start, size,
         dev_name(&dev->dev)))
  return -EBUSY;

 info->map.name = dev_name(&dev->dev);
 info->map.phys = res->start;
 info->map.size = size;
 info->map.bankwidth = pdata->width;

 info->map.virt = devm_ioremap(&dev->dev, info->map.phys, size);
 if (!info->map.virt)
  return -EBUSY;

 if (pdata->map_init)
  (*pdata->map_init)(&info->map);
 else
  simple_map_init(&info->map);

 probe_type = rom_probe_types;
 for (; !info->mtd && *probe_type; probe_type++)
  info->mtd = do_map_probe(*probe_type, &info->map);
 if (!info->mtd) {
  dev_err(&dev->dev, "map_probe failed\n");
  err = -ENXIO;
  goto err_out;
 }
 info->mtd->dev.parent = &dev->dev;
 err = mtd_device_register(info->mtd, pdata->parts, pdata->nr_parts);

 if (err)
  goto err_out;
 return 0;

err_out:
 rbtx4939_flash_remove(dev);
 return err;
}
