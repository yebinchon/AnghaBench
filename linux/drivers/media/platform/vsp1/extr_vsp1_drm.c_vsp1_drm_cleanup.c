
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_device {TYPE_1__* drm; } ;
struct TYPE_2__ {int lock; } ;


 int mutex_destroy (int *) ;

void vsp1_drm_cleanup(struct vsp1_device *vsp1)
{
 mutex_destroy(&vsp1->drm->lock);
}
