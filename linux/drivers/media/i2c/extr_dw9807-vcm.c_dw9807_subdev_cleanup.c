
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct dw9807_device {TYPE_1__ sd; int ctrls_vcm; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static void dw9807_subdev_cleanup(struct dw9807_device *dw9807_dev)
{
 v4l2_async_unregister_subdev(&dw9807_dev->sd);
 v4l2_ctrl_handler_free(&dw9807_dev->ctrls_vcm);
 media_entity_cleanup(&dw9807_dev->sd.entity);
}
