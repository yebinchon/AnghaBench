
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl_handler; } ;
struct ov7740 {int mutex; TYPE_1__ subdev; } ;


 int mutex_destroy (int *) ;
 int v4l2_ctrl_handler_free (int ) ;

__attribute__((used)) static void ov7740_free_controls(struct ov7740 *ov7740)
{
 v4l2_ctrl_handler_free(ov7740->subdev.ctrl_handler);
 mutex_destroy(&ov7740->mutex);
}
