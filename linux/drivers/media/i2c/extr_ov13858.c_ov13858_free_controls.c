
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl_handler; } ;
struct ov13858 {int mutex; TYPE_1__ sd; } ;


 int mutex_destroy (int *) ;
 int v4l2_ctrl_handler_free (int ) ;

__attribute__((used)) static void ov13858_free_controls(struct ov13858 *ov13858)
{
 v4l2_ctrl_handler_free(ov13858->sd.ctrl_handler);
 mutex_destroy(&ov13858->mutex);
}
