
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct resource {int start; } ;
struct TYPE_24__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_9__ dev; } ;
struct physmap_flash_info {int nmaps; int nparts; int parts; int part_types; TYPE_4__* cmtd; int vpp_lock; TYPE_4__** mtds; TYPE_2__* maps; scalar_t__ probe_type; TYPE_10__* gpios; scalar_t__ win_order; } ;
struct TYPE_21__ {TYPE_9__* parent; } ;
struct TYPE_23__ {TYPE_1__ dev; } ;
struct TYPE_22__ {unsigned long map_priv_1; int read; int size; int phys; int name; TYPE_10__* virt; } ;
struct TYPE_20__ {int ndescs; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int BIT (scalar_t__) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (TYPE_10__*) ;
 int PTR_ERR (TYPE_10__*) ;
 int dev_err (TYPE_9__*,char*) ;
 int dev_get_platdata (TYPE_9__*) ;
 int dev_name (TYPE_9__*) ;
 int dev_notice (TYPE_9__*,char*,struct resource*) ;
 TYPE_10__* devm_gpiod_get_array_optional (TYPE_9__*,char*,int ) ;
 TYPE_10__* devm_ioremap_resource (TYPE_9__*,struct resource*) ;
 void* devm_kzalloc (TYPE_9__*,int,int ) ;
 void* do_map_probe (scalar_t__,TYPE_2__*) ;
 scalar_t__ get_bitmask_order (int ) ;
 TYPE_4__* mtd_concat_create (TYPE_4__**,int,int ) ;
 int mtd_device_parse_register (TYPE_4__*,int ,int *,int ,int ) ;
 int mtd_set_of_node (TYPE_4__*,scalar_t__) ;
 int physmap_addr_gpios_map_init (TYPE_2__*) ;
 int physmap_flash_of_init (struct platform_device*) ;
 int physmap_flash_pdata_init (struct platform_device*) ;
 int physmap_flash_remove (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct physmap_flash_info*) ;
 int resource_size (struct resource*) ;
 scalar_t__* rom_probe_types ;
 int simple_map_init (TYPE_2__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int physmap_flash_probe(struct platform_device *dev)
{
 struct physmap_flash_info *info;
 int err = 0;
 int i;

 if (!dev->dev.of_node && !dev_get_platdata(&dev->dev))
  return -EINVAL;

 info = devm_kzalloc(&dev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 while (platform_get_resource(dev, IORESOURCE_MEM, info->nmaps))
  info->nmaps++;

 if (!info->nmaps)
  return -ENODEV;

 info->maps = devm_kzalloc(&dev->dev,
      sizeof(*info->maps) * info->nmaps,
      GFP_KERNEL);
 if (!info->maps)
  return -ENOMEM;

 info->mtds = devm_kzalloc(&dev->dev,
      sizeof(*info->mtds) * info->nmaps,
      GFP_KERNEL);
 if (!info->mtds)
  return -ENOMEM;

 platform_set_drvdata(dev, info);

 info->gpios = devm_gpiod_get_array_optional(&dev->dev, "addr",
          GPIOD_OUT_LOW);
 if (IS_ERR(info->gpios))
  return PTR_ERR(info->gpios);

 if (info->gpios && info->nmaps > 1) {
  dev_err(&dev->dev, "addr-gpios only supported for nmaps == 1\n");
  return -EINVAL;
 }

 if (dev->dev.of_node)
  err = physmap_flash_of_init(dev);
 else
  err = physmap_flash_pdata_init(dev);

 if (err)
  return err;

 for (i = 0; i < info->nmaps; i++) {
  struct resource *res;

  res = platform_get_resource(dev, IORESOURCE_MEM, i);
  info->maps[i].virt = devm_ioremap_resource(&dev->dev, res);
  if (IS_ERR(info->maps[i].virt)) {
   err = PTR_ERR(info->maps[i].virt);
   goto err_out;
  }

  dev_notice(&dev->dev, "physmap platform flash device: %pR\n",
      res);

  info->maps[i].name = dev_name(&dev->dev);

  if (!info->maps[i].phys)
   info->maps[i].phys = res->start;

  info->win_order = get_bitmask_order(resource_size(res)) - 1;
  info->maps[i].size = BIT(info->win_order +
      (info->gpios ?
       info->gpios->ndescs : 0));

  info->maps[i].map_priv_1 = (unsigned long)dev;

  if (info->gpios) {
   err = physmap_addr_gpios_map_init(&info->maps[i]);
   if (err)
    goto err_out;
  }
  simple_map_init(&info->maps[i]);


  if (info->probe_type) {
   info->mtds[i] = do_map_probe(info->probe_type,
           &info->maps[i]);
  } else {
   int j;

   for (j = 0; j < ARRAY_SIZE(rom_probe_types); j++) {
    info->mtds[i] = do_map_probe(rom_probe_types[j],
            &info->maps[i]);
    if (info->mtds[i])
     break;
   }
  }

  if (!info->mtds[i]) {
   dev_err(&dev->dev, "map_probe failed\n");
   err = -ENXIO;
   goto err_out;
  }
  info->mtds[i]->dev.parent = &dev->dev;
 }

 if (info->nmaps == 1) {
  info->cmtd = info->mtds[0];
 } else {



  info->cmtd = mtd_concat_create(info->mtds, info->nmaps,
            dev_name(&dev->dev));
  if (!info->cmtd)
   err = -ENXIO;
 }
 if (err)
  goto err_out;

 spin_lock_init(&info->vpp_lock);

 mtd_set_of_node(info->cmtd, dev->dev.of_node);
 err = mtd_device_parse_register(info->cmtd, info->part_types, ((void*)0),
     info->parts, info->nparts);
 if (err)
  goto err_out;

 return 0;

err_out:
 physmap_flash_remove(dev);
 return err;
}
