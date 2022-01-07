
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sizeimage; } ;
struct via_camera {TYPE_1__ user_format; } ;
struct vb2_queue {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct via_camera* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int viacam_vb2_queue_setup(struct vb2_queue *vq,
      unsigned int *nbufs,
      unsigned int *num_planes, unsigned int sizes[],
      struct device *alloc_devs[])
{
 struct via_camera *cam = vb2_get_drv_priv(vq);
 int size = cam->user_format.sizeimage;

 if (*num_planes)
  return sizes[0] < size ? -EINVAL : 0;

 *num_planes = 1;
 sizes[0] = size;
 return 0;
}
