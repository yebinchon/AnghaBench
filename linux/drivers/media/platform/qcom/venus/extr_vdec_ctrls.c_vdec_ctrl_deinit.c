
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int ctrl_handler; } ;


 int v4l2_ctrl_handler_free (int *) ;

void vdec_ctrl_deinit(struct venus_inst *inst)
{
 v4l2_ctrl_handler_free(&inst->ctrl_handler);
}
