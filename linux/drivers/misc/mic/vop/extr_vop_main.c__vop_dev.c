
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct _vop_vdev {TYPE_2__ vdev; } ;



__attribute__((used)) static inline struct device *_vop_dev(struct _vop_vdev *vdev)
{
 return vdev->vdev.dev.parent;
}
