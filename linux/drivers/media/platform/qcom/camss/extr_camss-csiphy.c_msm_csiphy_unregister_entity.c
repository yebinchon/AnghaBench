
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct csiphy_device {TYPE_1__ subdev; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_device_unregister_subdev (TYPE_1__*) ;

void msm_csiphy_unregister_entity(struct csiphy_device *csiphy)
{
 v4l2_device_unregister_subdev(&csiphy->subdev);
 media_entity_cleanup(&csiphy->subdev.entity);
}
