
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int sizeimage; } ;
struct vimc_cap_device {TYPE_1__ format; } ;
struct vb2_queue {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct vimc_cap_device* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int vimc_cap_queue_setup(struct vb2_queue *vq, unsigned int *nbuffers,
    unsigned int *nplanes, unsigned int sizes[],
    struct device *alloc_devs[])
{
 struct vimc_cap_device *vcap = vb2_get_drv_priv(vq);

 if (*nplanes)
  return sizes[0] < vcap->format.sizeimage ? -EINVAL : 0;

 *nplanes = 1;
 sizes[0] = vcap->format.sizeimage;

 return 0;
}
