
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dummy; } ;
struct mtd_pci_info {int (* init ) (struct pci_dev*,struct map_pci_info*) ;int map_name; int translate; int (* exit ) (struct pci_dev*,struct map_pci_info*) ;} ;
struct mtd_info {int owner; } ;
struct TYPE_3__ {int name; } ;
struct map_pci_info {int (* exit ) (struct pci_dev*,struct map_pci_info*) ;TYPE_1__ map; int translate; struct pci_dev* dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 struct mtd_info* do_map_probe (int ,TYPE_1__*) ;
 int kfree (struct map_pci_info*) ;
 struct map_pci_info* kmalloc (int,int ) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 TYPE_1__ mtd_pci_map ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 int pci_set_drvdata (struct pci_dev*,struct mtd_info*) ;
 int stub1 (struct pci_dev*,struct map_pci_info*) ;
 int stub2 (struct pci_dev*,struct map_pci_info*) ;

__attribute__((used)) static int mtd_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct mtd_pci_info *info = (struct mtd_pci_info *)id->driver_data;
 struct map_pci_info *map = ((void*)0);
 struct mtd_info *mtd = ((void*)0);
 int err;

 err = pci_enable_device(dev);
 if (err)
  goto out;

 err = pci_request_regions(dev, "pci mtd");
 if (err)
  goto out;

 map = kmalloc(sizeof(*map), GFP_KERNEL);
 err = -ENOMEM;
 if (!map)
  goto release;

 map->map = mtd_pci_map;
 map->map.name = pci_name(dev);
 map->dev = dev;
 map->exit = info->exit;
 map->translate = info->translate;

 err = info->init(dev, map);
 if (err)
  goto release;

 mtd = do_map_probe(info->map_name, &map->map);
 err = -ENODEV;
 if (!mtd)
  goto release;

 mtd->owner = THIS_MODULE;
 mtd_device_register(mtd, ((void*)0), 0);

 pci_set_drvdata(dev, mtd);

 return 0;

release:
 if (map) {
  map->exit(dev, map);
  kfree(map);
 }

 pci_release_regions(dev);
out:
 return err;
}
