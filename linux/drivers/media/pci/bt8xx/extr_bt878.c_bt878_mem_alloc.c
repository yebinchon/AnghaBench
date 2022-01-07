
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt878 {int buf_size; int risc_size; void* risc_cpu; int risc_dma; int dev; void* buf_cpu; int buf_dma; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int bt878_mem_free (struct bt878*) ;
 void* pci_zalloc_consistent (int ,int,int *) ;

__attribute__((used)) static int bt878_mem_alloc(struct bt878 *bt)
{
 if (!bt->buf_cpu) {
  bt->buf_size = 128 * 1024;

  bt->buf_cpu = pci_zalloc_consistent(bt->dev, bt->buf_size,
          &bt->buf_dma);
  if (!bt->buf_cpu)
   return -ENOMEM;
 }

 if (!bt->risc_cpu) {
  bt->risc_size = PAGE_SIZE;
  bt->risc_cpu = pci_zalloc_consistent(bt->dev, bt->risc_size,
           &bt->risc_dma);
  if (!bt->risc_cpu) {
   bt878_mem_free(bt);
   return -ENOMEM;
  }
 }

 return 0;
}
