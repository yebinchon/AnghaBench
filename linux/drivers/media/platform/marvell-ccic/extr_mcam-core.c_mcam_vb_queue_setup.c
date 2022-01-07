
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_2__ {unsigned int sizeimage; } ;
struct mcam_camera {scalar_t__ buffer_mode; TYPE_1__ pix_format; } ;
struct device {int dummy; } ;


 scalar_t__ B_DMA_contig ;
 int EINVAL ;
 struct mcam_camera* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int mcam_vb_queue_setup(struct vb2_queue *vq,
  unsigned int *nbufs,
  unsigned int *num_planes, unsigned int sizes[],
  struct device *alloc_devs[])
{
 struct mcam_camera *cam = vb2_get_drv_priv(vq);
 int minbufs = (cam->buffer_mode == B_DMA_contig) ? 3 : 2;
 unsigned size = cam->pix_format.sizeimage;

 if (*nbufs < minbufs)
  *nbufs = minbufs;

 if (*num_planes)
  return sizes[0] < size ? -EINVAL : 0;
 sizes[0] = size;
 *num_planes = 1;
 return 0;
}
