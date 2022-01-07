
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_5__ {int size; } ;


 int SCB2_ADDR ;
 int SCB2_WINDOW ;
 int iounmap (int *) ;
 int map_destroy (TYPE_1__*) ;
 int mtd_device_unregister (TYPE_1__*) ;
 int mtd_lock (TYPE_1__*,int ,int ) ;
 int region_fail ;
 int release_mem_region (int ,int ) ;
 int * scb2_ioaddr ;
 TYPE_1__* scb2_mtd ;

__attribute__((used)) static void scb2_flash_remove(struct pci_dev *dev)
{
 if (!scb2_mtd)
  return;


 mtd_lock(scb2_mtd, 0, scb2_mtd->size);

 mtd_device_unregister(scb2_mtd);
 map_destroy(scb2_mtd);

 iounmap(scb2_ioaddr);
 scb2_ioaddr = ((void*)0);

 if (!region_fail)
  release_mem_region(SCB2_ADDR, SCB2_WINDOW);
}
