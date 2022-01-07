
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mtd_info {struct map_pci_info* priv; } ;
struct map_pci_info {int (* exit ) (struct pci_dev*,struct map_pci_info*) ;} ;


 int kfree (struct map_pci_info*) ;
 int map_destroy (struct mtd_info*) ;
 int mtd_device_unregister (struct mtd_info*) ;
 struct mtd_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int stub1 (struct pci_dev*,struct map_pci_info*) ;

__attribute__((used)) static void mtd_pci_remove(struct pci_dev *dev)
{
 struct mtd_info *mtd = pci_get_drvdata(dev);
 struct map_pci_info *map = mtd->priv;

 mtd_device_unregister(mtd);
 map_destroy(mtd);
 map->exit(dev, map);
 kfree(map);

 pci_release_regions(dev);
}
