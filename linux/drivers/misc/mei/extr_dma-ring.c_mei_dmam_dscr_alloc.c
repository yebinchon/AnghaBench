
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_dma_dscr {scalar_t__ vaddr; int daddr; int size; } ;
struct mei_device {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ dmam_alloc_coherent (int ,int ,int *,int ) ;
 int is_power_of_2 (int ) ;

__attribute__((used)) static int mei_dmam_dscr_alloc(struct mei_device *dev,
          struct mei_dma_dscr *dscr)
{
 if (!dscr->size)
  return 0;

 if (WARN_ON(!is_power_of_2(dscr->size)))
  return -EINVAL;

 if (dscr->vaddr)
  return 0;

 dscr->vaddr = dmam_alloc_coherent(dev->dev, dscr->size, &dscr->daddr,
       GFP_KERNEL);
 if (!dscr->vaddr)
  return -ENOMEM;

 return 0;
}
