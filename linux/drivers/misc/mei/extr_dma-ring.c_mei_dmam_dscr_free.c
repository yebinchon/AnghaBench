
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_dma_dscr {int * vaddr; int daddr; int size; } ;
struct mei_device {int dev; } ;


 int dmam_free_coherent (int ,int ,int *,int ) ;

__attribute__((used)) static void mei_dmam_dscr_free(struct mei_device *dev,
          struct mei_dma_dscr *dscr)
{
 if (!dscr->vaddr)
  return;

 dmam_free_coherent(dev->dev, dscr->size, dscr->vaddr, dscr->daddr);
 dscr->vaddr = ((void*)0);
}
