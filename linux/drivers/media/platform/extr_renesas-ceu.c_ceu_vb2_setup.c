
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {unsigned int num_planes; TYPE_1__* plane_fmt; } ;
struct device {int dummy; } ;
struct ceu_device {struct v4l2_pix_format_mplane v4l2_pix; } ;
struct TYPE_2__ {unsigned int sizeimage; } ;


 int EINVAL ;
 struct ceu_device* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int ceu_vb2_setup(struct vb2_queue *vq, unsigned int *count,
    unsigned int *num_planes, unsigned int sizes[],
    struct device *alloc_devs[])
{
 struct ceu_device *ceudev = vb2_get_drv_priv(vq);
 struct v4l2_pix_format_mplane *pix = &ceudev->v4l2_pix;
 unsigned int i;


 if (*num_planes) {
  for (i = 0; i < pix->num_planes; i++)
   if (sizes[i] < pix->plane_fmt[i].sizeimage)
    return -EINVAL;

  return 0;
 }


 *num_planes = pix->num_planes;
 for (i = 0; i < pix->num_planes; i++)
  sizes[i] = pix->plane_fmt[i].sizeimage;

 return 0;
}
