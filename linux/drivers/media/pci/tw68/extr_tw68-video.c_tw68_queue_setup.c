
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {unsigned int num_buffers; } ;
struct tw68_dev {int width; int height; TYPE_1__* fmt; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int depth; } ;


 int EINVAL ;
 unsigned int tw68_buffer_count (unsigned int,unsigned int) ;
 struct tw68_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int tw68_queue_setup(struct vb2_queue *q,
      unsigned int *num_buffers, unsigned int *num_planes,
      unsigned int sizes[], struct device *alloc_devs[])
{
 struct tw68_dev *dev = vb2_get_drv_priv(q);
 unsigned tot_bufs = q->num_buffers + *num_buffers;
 unsigned size = (dev->fmt->depth * dev->width * dev->height) >> 3;

 if (tot_bufs < 2)
  tot_bufs = 2;
 tot_bufs = tw68_buffer_count(size, tot_bufs);
 *num_buffers = tot_bufs - q->num_buffers;





 if (*num_planes)
  return sizes[0] < size ? -EINVAL : 0;
 *num_planes = 1;
 sizes[0] = size;

 return 0;
}
