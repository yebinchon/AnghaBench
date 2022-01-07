
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_nor_mtd {int dummy; } ;
struct pci_dev {int dummy; } ;


 int kfree (struct vr_nor_mtd*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct vr_nor_mtd* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int vr_nor_destroy_maps (struct vr_nor_mtd*) ;
 int vr_nor_destroy_mtd_setup (struct vr_nor_mtd*) ;
 int vr_nor_destroy_partitions (struct vr_nor_mtd*) ;

__attribute__((used)) static void vr_nor_pci_remove(struct pci_dev *dev)
{
 struct vr_nor_mtd *p = pci_get_drvdata(dev);

 vr_nor_destroy_partitions(p);
 vr_nor_destroy_mtd_setup(p);
 vr_nor_destroy_maps(p);
 kfree(p);
 pci_release_regions(dev);
 pci_disable_device(dev);
}
