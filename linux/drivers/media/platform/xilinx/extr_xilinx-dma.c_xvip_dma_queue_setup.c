
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int sizeimage; } ;
struct xvip_dma {TYPE_1__ format; } ;
struct vb2_queue {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct xvip_dma* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int
xvip_dma_queue_setup(struct vb2_queue *vq,
       unsigned int *nbuffers, unsigned int *nplanes,
       unsigned int sizes[], struct device *alloc_devs[])
{
 struct xvip_dma *dma = vb2_get_drv_priv(vq);


 if (*nplanes)
  return sizes[0] < dma->format.sizeimage ? -EINVAL : 0;

 *nplanes = 1;
 sizes[0] = dma->format.sizeimage;

 return 0;
}
