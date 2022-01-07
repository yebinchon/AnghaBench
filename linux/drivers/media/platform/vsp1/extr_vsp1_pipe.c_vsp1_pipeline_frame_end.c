
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_pipeline {int sequence; int (* frame_end ) (struct vsp1_pipeline*,unsigned int) ;scalar_t__ hgt; scalar_t__ hgo; TYPE_1__* output; } ;
struct TYPE_2__ {int dlm; } ;


 int stub1 (struct vsp1_pipeline*,unsigned int) ;
 unsigned int vsp1_dlm_irq_frame_end (int ) ;
 int vsp1_hgo_frame_end (scalar_t__) ;
 int vsp1_hgt_frame_end (scalar_t__) ;

void vsp1_pipeline_frame_end(struct vsp1_pipeline *pipe)
{
 unsigned int flags;

 if (pipe == ((void*)0))
  return;






 flags = vsp1_dlm_irq_frame_end(pipe->output->dlm);

 if (pipe->hgo)
  vsp1_hgo_frame_end(pipe->hgo);

 if (pipe->hgt)
  vsp1_hgt_frame_end(pipe->hgt);





 if (pipe->frame_end)
  pipe->frame_end(pipe, flags);

 pipe->sequence++;
}
