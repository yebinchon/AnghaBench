
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {struct cx23885_dev* drv_priv; } ;
struct device {int dummy; } ;
struct cx23885_dev {int width; int height; TYPE_1__* fmt; } ;
struct TYPE_2__ {int depth; } ;



__attribute__((used)) static int queue_setup(struct vb2_queue *q,
      unsigned int *num_buffers, unsigned int *num_planes,
      unsigned int sizes[], struct device *alloc_devs[])
{
 struct cx23885_dev *dev = q->drv_priv;

 *num_planes = 1;
 sizes[0] = (dev->fmt->depth * dev->width * dev->height) >> 3;
 return 0;
}
