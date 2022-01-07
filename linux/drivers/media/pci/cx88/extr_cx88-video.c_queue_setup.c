
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {struct cx8800_dev* drv_priv; } ;
struct device {int dummy; } ;
struct cx88_core {int width; int height; } ;
struct cx8800_dev {TYPE_1__* fmt; struct cx88_core* core; } ;
struct TYPE_2__ {int depth; } ;



__attribute__((used)) static int queue_setup(struct vb2_queue *q,
         unsigned int *num_buffers, unsigned int *num_planes,
         unsigned int sizes[], struct device *alloc_devs[])
{
 struct cx8800_dev *dev = q->drv_priv;
 struct cx88_core *core = dev->core;

 *num_planes = 1;
 sizes[0] = (dev->fmt->depth * core->width * core->height) >> 3;
 return 0;
}
