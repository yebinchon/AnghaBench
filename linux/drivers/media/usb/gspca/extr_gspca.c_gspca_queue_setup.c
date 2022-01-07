
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_2__ {int sizeimage; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;
struct device {int dummy; } ;


 int EINVAL ;
 unsigned int PAGE_ALIGN (int ) ;
 struct gspca_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int gspca_queue_setup(struct vb2_queue *vq,
        unsigned int *nbuffers, unsigned int *nplanes,
        unsigned int sizes[], struct device *alloc_devs[])
{
 struct gspca_dev *gspca_dev = vb2_get_drv_priv(vq);
 unsigned int size = PAGE_ALIGN(gspca_dev->pixfmt.sizeimage);

 if (*nplanes)
  return sizes[0] < size ? -EINVAL : 0;
 *nplanes = 1;
 sizes[0] = size;
 return 0;
}
