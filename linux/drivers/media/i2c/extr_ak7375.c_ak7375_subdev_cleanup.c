
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct ak7375_device {TYPE_1__ sd; int ctrls_vcm; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static void ak7375_subdev_cleanup(struct ak7375_device *ak7375_dev)
{
 v4l2_async_unregister_subdev(&ak7375_dev->sd);
 v4l2_ctrl_handler_free(&ak7375_dev->ctrls_vcm);
 media_entity_cleanup(&ak7375_dev->sd.entity);
}
