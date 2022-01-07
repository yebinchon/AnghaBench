
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int * dr_dscr; } ;


 int DMA_DSCR_NUM ;
 int mei_dmam_dscr_free (struct mei_device*,int *) ;

void mei_dmam_ring_free(struct mei_device *dev)
{
 int i;

 for (i = 0; i < DMA_DSCR_NUM; i++)
  mei_dmam_dscr_free(dev, &dev->dr_dscr[i]);
}
