
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt878 {int * risc_cpu; int risc_dma; int risc_size; int dev; int * buf_cpu; int buf_dma; int buf_size; } ;


 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void bt878_mem_free(struct bt878 *bt)
{
 if (bt->buf_cpu) {
  pci_free_consistent(bt->dev, bt->buf_size, bt->buf_cpu,
        bt->buf_dma);
  bt->buf_cpu = ((void*)0);
 }

 if (bt->risc_cpu) {
  pci_free_consistent(bt->dev, bt->risc_size, bt->risc_cpu,
        bt->risc_dma);
  bt->risc_cpu = ((void*)0);
 }
}
