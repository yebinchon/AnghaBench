
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int * dr_dscr; } ;


 int DMA_DSCR_NUM ;
 int ENOMEM ;
 scalar_t__ mei_dmam_dscr_alloc (struct mei_device*,int *) ;
 int mei_dmam_ring_free (struct mei_device*) ;

int mei_dmam_ring_alloc(struct mei_device *dev)
{
 int i;

 for (i = 0; i < DMA_DSCR_NUM; i++)
  if (mei_dmam_dscr_alloc(dev, &dev->dr_dscr[i]))
   goto err;

 return 0;

err:
 mei_dmam_ring_free(dev);
 return -ENOMEM;
}
