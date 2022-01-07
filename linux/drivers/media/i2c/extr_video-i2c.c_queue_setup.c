
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_i2c_data {TYPE_1__* chip; } ;
struct vb2_queue {unsigned int num_buffers; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int buffer_size; } ;


 int EINVAL ;
 struct video_i2c_data* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int queue_setup(struct vb2_queue *vq,
         unsigned int *nbuffers, unsigned int *nplanes,
         unsigned int sizes[], struct device *alloc_devs[])
{
 struct video_i2c_data *data = vb2_get_drv_priv(vq);
 unsigned int size = data->chip->buffer_size;

 if (vq->num_buffers + *nbuffers < 2)
  *nbuffers = 2;

 if (*nplanes)
  return sizes[0] < size ? -EINVAL : 0;

 *nplanes = 1;
 sizes[0] = size;

 return 0;
}
