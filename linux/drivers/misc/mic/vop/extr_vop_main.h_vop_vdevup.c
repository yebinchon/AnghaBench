
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_vdev {TYPE_1__* dd; } ;
struct TYPE_2__ {int status; } ;



__attribute__((used)) static inline bool vop_vdevup(struct vop_vdev *vdev)
{
 return !!vdev->dd->status;
}
