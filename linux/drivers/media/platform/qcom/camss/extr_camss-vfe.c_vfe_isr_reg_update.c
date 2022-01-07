
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vfe_output {int state; int ** buf; TYPE_4__* last_buffer; int reg_update; scalar_t__ wait_reg_update; } ;
struct vfe_device {int output_lock; TYPE_2__* line; TYPE_1__* ops; } ;
typedef enum vfe_line_id { ____Placeholder_vfe_line_id } vfe_line_id ;
struct TYPE_7__ {int vb2_buf; } ;
struct TYPE_8__ {TYPE_3__ vb; } ;
struct TYPE_6__ {struct vfe_output output; } ;
struct TYPE_5__ {int (* reg_update_clear ) (struct vfe_device*,int) ;} ;


 int VB2_BUF_STATE_DONE ;

 int VFE_OUTPUT_IDLE ;

 int VFE_OUTPUT_STOPPING ;
 int complete (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct vfe_device*,int) ;
 int vb2_buffer_done (int *,int ) ;
 void* vfe_buf_get_pending (struct vfe_output*) ;
 int vfe_output_frame_drop (struct vfe_device*,struct vfe_output*,int) ;
 int vfe_output_init_addrs (struct vfe_device*,struct vfe_output*,int) ;

__attribute__((used)) static void vfe_isr_reg_update(struct vfe_device *vfe, enum vfe_line_id line_id)
{
 struct vfe_output *output;
 unsigned long flags;

 spin_lock_irqsave(&vfe->output_lock, flags);
 vfe->ops->reg_update_clear(vfe, line_id);

 output = &vfe->line[line_id].output;

 if (output->wait_reg_update) {
  output->wait_reg_update = 0;
  complete(&output->reg_update);
  spin_unlock_irqrestore(&vfe->output_lock, flags);
  return;
 }

 if (output->state == VFE_OUTPUT_STOPPING) {

  if (output->last_buffer) {
   vb2_buffer_done(&output->last_buffer->vb.vb2_buf,
     VB2_BUF_STATE_DONE);
   output->last_buffer = ((void*)0);
  }
  output->state = VFE_OUTPUT_IDLE;




  output->buf[0] = vfe_buf_get_pending(output);
  output->buf[1] = vfe_buf_get_pending(output);

  if (!output->buf[0] && output->buf[1]) {
   output->buf[0] = output->buf[1];
   output->buf[1] = ((void*)0);
  }

  if (output->buf[0])
   output->state = 128;

  if (output->buf[1])
   output->state = 129;

  switch (output->state) {
  case 128:
   vfe_output_frame_drop(vfe, output, 2);
   break;
  case 129:
   vfe_output_frame_drop(vfe, output, 3);
   break;
  default:
   vfe_output_frame_drop(vfe, output, 0);
   break;
  }

  vfe_output_init_addrs(vfe, output, 1);
 }

 spin_unlock_irqrestore(&vfe->output_lock, flags);
}
