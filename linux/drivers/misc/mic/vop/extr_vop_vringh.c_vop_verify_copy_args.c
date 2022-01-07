
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_vdev {TYPE_1__* dd; } ;
struct mic_copy_desc {scalar_t__ vr_idx; } ;
struct TYPE_2__ {scalar_t__ num_vq; } ;


 int EINVAL ;

__attribute__((used)) static inline int vop_verify_copy_args(struct vop_vdev *vdev,
           struct mic_copy_desc *copy)
{
 if (!vdev || copy->vr_idx >= vdev->dd->num_vq)
  return -EINVAL;
 return 0;
}
