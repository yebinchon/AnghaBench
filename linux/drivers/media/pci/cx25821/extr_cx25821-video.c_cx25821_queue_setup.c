
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {struct cx25821_channel* drv_priv; } ;
struct device {int dummy; } ;
struct cx25821_channel {int width; int height; TYPE_1__* fmt; } ;
struct TYPE_2__ {int depth; } ;


 int EINVAL ;

__attribute__((used)) static int cx25821_queue_setup(struct vb2_queue *q,
      unsigned int *num_buffers, unsigned int *num_planes,
      unsigned int sizes[], struct device *alloc_devs[])
{
 struct cx25821_channel *chan = q->drv_priv;
 unsigned size = (chan->fmt->depth * chan->width * chan->height) >> 3;

 if (*num_planes)
  return sizes[0] < size ? -EINVAL : 0;

 *num_planes = 1;
 sizes[0] = size;
 return 0;
}
