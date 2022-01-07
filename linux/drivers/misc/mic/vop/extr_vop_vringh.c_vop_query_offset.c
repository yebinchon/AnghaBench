
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long len; int va; } ;
struct vop_vringh {TYPE_3__ vring; } ;
struct vop_vdev {struct vop_vringh* vvr; TYPE_2__* dd; struct vop_device* vpdev; } ;
struct vop_device {TYPE_1__* hw_ops; } ;
struct TYPE_5__ {int num_vq; } ;
struct TYPE_4__ {int (* get_dp ) (struct vop_device*) ;} ;


 unsigned long MIC_DP_SIZE ;
 int stub1 (struct vop_device*) ;
 unsigned long virt_to_phys (int ) ;

__attribute__((used)) static inline int
vop_query_offset(struct vop_vdev *vdev, unsigned long offset,
   unsigned long *size, unsigned long *pa)
{
 struct vop_device *vpdev = vdev->vpdev;
 unsigned long start = MIC_DP_SIZE;
 int i;
 if (!offset) {
  *pa = virt_to_phys(vpdev->hw_ops->get_dp(vpdev));
  *size = MIC_DP_SIZE;
  return 0;
 }

 for (i = 0; i < vdev->dd->num_vq; i++) {
  struct vop_vringh *vvr = &vdev->vvr[i];

  if (offset == start) {
   *pa = virt_to_phys(vvr->vring.va);
   *size = vvr->vring.len;
   return 0;
  }
  start += vvr->vring.len;
 }
 return -1;
}
