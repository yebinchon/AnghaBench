
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vsp1_pipeline {scalar_t__ state; scalar_t__ buffers_ready; TYPE_2__* output; } ;
struct vsp1_device {int dummy; } ;
struct TYPE_3__ {int index; struct vsp1_device* vsp1; } ;
struct TYPE_4__ {TYPE_1__ entity; } ;


 int VI6_CMD (int ) ;
 int VI6_CMD_STRCMD ;
 scalar_t__ VSP1_PIPELINE_RUNNING ;
 scalar_t__ VSP1_PIPELINE_STOPPED ;
 int vsp1_write (struct vsp1_device*,int ,int ) ;

void vsp1_pipeline_run(struct vsp1_pipeline *pipe)
{
 struct vsp1_device *vsp1 = pipe->output->entity.vsp1;

 if (pipe->state == VSP1_PIPELINE_STOPPED) {
  vsp1_write(vsp1, VI6_CMD(pipe->output->entity.index),
      VI6_CMD_STRCMD);
  pipe->state = VSP1_PIPELINE_RUNNING;
 }

 pipe->buffers_ready = 0;
}
