
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_dma_ring_info {int size; struct rocker_desc* desc; struct rocker_desc_info* desc_info; } ;
struct rocker_desc_info {int data; int data_size; } ;
struct rocker_desc {scalar_t__ buf_size; scalar_t__ buf_addr; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;


 int dma_unmap_addr (struct rocker_desc_info const*,int ) ;
 int kfree (int ) ;
 int mapaddr ;
 int pci_unmap_single (struct pci_dev*,int ,int ,int) ;

__attribute__((used)) static void rocker_dma_ring_bufs_free(const struct rocker *rocker,
          const struct rocker_dma_ring_info *info,
          int direction)
{
 struct pci_dev *pdev = rocker->pdev;
 int i;

 for (i = 0; i < info->size; i++) {
  const struct rocker_desc_info *desc_info = &info->desc_info[i];
  struct rocker_desc *desc = &info->desc[i];

  desc->buf_addr = 0;
  desc->buf_size = 0;
  pci_unmap_single(pdev, dma_unmap_addr(desc_info, mapaddr),
     desc_info->data_size, direction);
  kfree(desc_info->data);
 }
}
