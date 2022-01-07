
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct csid_device {int ctrls; TYPE_1__ subdev; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (TYPE_1__*) ;

void msm_csid_unregister_entity(struct csid_device *csid)
{
 v4l2_device_unregister_subdev(&csid->subdev);
 media_entity_cleanup(&csid->subdev.entity);
 v4l2_ctrl_handler_free(&csid->ctrls);
}
