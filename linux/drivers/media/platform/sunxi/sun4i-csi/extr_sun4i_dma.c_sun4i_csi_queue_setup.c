
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_4__ {unsigned int num_planes; TYPE_1__* plane_fmt; } ;
struct sun4i_csi {TYPE_2__ fmt; } ;
struct device {int dummy; } ;
struct TYPE_3__ {unsigned int sizeimage; } ;


 int EINVAL ;
 struct sun4i_csi* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int sun4i_csi_queue_setup(struct vb2_queue *vq,
     unsigned int *nbuffers,
     unsigned int *nplanes,
     unsigned int sizes[],
     struct device *alloc_devs[])
{
 struct sun4i_csi *csi = vb2_get_drv_priv(vq);
 unsigned int num_planes = csi->fmt.num_planes;
 unsigned int i;

 if (*nplanes) {
  if (*nplanes != num_planes)
   return -EINVAL;

  for (i = 0; i < num_planes; i++)
   if (sizes[i] < csi->fmt.plane_fmt[i].sizeimage)
    return -EINVAL;
  return 0;
 }

 *nplanes = num_planes;
 for (i = 0; i < num_planes; i++)
  sizes[i] = csi->fmt.plane_fmt[i].sizeimage;

 return 0;
}
