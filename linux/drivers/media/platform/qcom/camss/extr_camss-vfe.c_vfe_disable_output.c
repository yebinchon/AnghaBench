
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_output {int wait_sof; unsigned int wm_num; int wait_reg_update; int * wm_idx; int reg_update; int sof; } ;
struct vfe_line {int id; struct vfe_output output; } ;
struct vfe_hw_ops {int (* camif_wait_for_stop ) (struct vfe_device*,int ) ;int (* set_camif_cmd ) (struct vfe_device*,int ) ;int (* set_xbar_cfg ) (struct vfe_device*,struct vfe_output*,int ) ;int (* set_realign_cfg ) (struct vfe_device*,struct vfe_line*,int ) ;int (* set_module_cfg ) (struct vfe_device*,int ) ;int (* enable_irq_pix_line ) (struct vfe_device*,int ,int ,int ) ;int (* set_cgc_override ) (struct vfe_device*,int ,int ) ;int (* wm_line_based ) (struct vfe_device*,int ,int *,unsigned int,int ) ;int (* enable_irq_wm_line ) (struct vfe_device*,int ,int ,int ) ;int (* bus_disconnect_wm_from_rdi ) (struct vfe_device*,int ,int ) ;int (* wm_frame_based ) (struct vfe_device*,int ,int ) ;int (* reg_update ) (struct vfe_device*,int ) ;int (* wm_enable ) (struct vfe_device*,int ,int ) ;} ;
struct vfe_device {TYPE_1__* camss; int output_lock; struct vfe_hw_ops* ops; } ;
struct TYPE_2__ {int dev; } ;


 int VFE_LINE_PIX ;
 int VFE_NEXT_SOF_MS ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct vfe_device*,int ,int ) ;
 int stub10 (struct vfe_device*,int ) ;
 int stub11 (struct vfe_device*,struct vfe_line*,int ) ;
 int stub12 (struct vfe_device*,struct vfe_output*,int ) ;
 int stub13 (struct vfe_device*,int ) ;
 int stub14 (struct vfe_device*,int ) ;
 int stub2 (struct vfe_device*,int ) ;
 int stub3 (struct vfe_device*,int ,int ) ;
 int stub4 (struct vfe_device*,int ,int ) ;
 int stub5 (struct vfe_device*,int ,int ,int ) ;
 int stub6 (struct vfe_device*,int ,int ) ;
 int stub7 (struct vfe_device*,int ,int *,unsigned int,int ) ;
 int stub8 (struct vfe_device*,int ,int ) ;
 int stub9 (struct vfe_device*,int ,int ,int ) ;
 struct vfe_device* to_vfe (struct vfe_line*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int vfe_disable_output(struct vfe_line *line)
{
 struct vfe_device *vfe = to_vfe(line);
 struct vfe_output *output = &line->output;
 const struct vfe_hw_ops *ops = vfe->ops;
 unsigned long flags;
 unsigned long time;
 unsigned int i;

 spin_lock_irqsave(&vfe->output_lock, flags);

 output->wait_sof = 1;
 spin_unlock_irqrestore(&vfe->output_lock, flags);

 time = wait_for_completion_timeout(&output->sof,
        msecs_to_jiffies(VFE_NEXT_SOF_MS));
 if (!time)
  dev_err(vfe->camss->dev, "VFE sof timeout\n");

 spin_lock_irqsave(&vfe->output_lock, flags);
 for (i = 0; i < output->wm_num; i++)
  ops->wm_enable(vfe, output->wm_idx[i], 0);

 ops->reg_update(vfe, line->id);
 output->wait_reg_update = 1;
 spin_unlock_irqrestore(&vfe->output_lock, flags);

 time = wait_for_completion_timeout(&output->reg_update,
        msecs_to_jiffies(VFE_NEXT_SOF_MS));
 if (!time)
  dev_err(vfe->camss->dev, "VFE reg update timeout\n");

 spin_lock_irqsave(&vfe->output_lock, flags);

 if (line->id != VFE_LINE_PIX) {
  ops->wm_frame_based(vfe, output->wm_idx[0], 0);
  ops->bus_disconnect_wm_from_rdi(vfe, output->wm_idx[0],
      line->id);
  ops->enable_irq_wm_line(vfe, output->wm_idx[0], line->id, 0);
  ops->set_cgc_override(vfe, output->wm_idx[0], 0);
  spin_unlock_irqrestore(&vfe->output_lock, flags);
 } else {
  for (i = 0; i < output->wm_num; i++) {
   ops->wm_line_based(vfe, output->wm_idx[i], ((void*)0), i, 0);
   ops->set_cgc_override(vfe, output->wm_idx[i], 0);
  }

  ops->enable_irq_pix_line(vfe, 0, line->id, 0);
  ops->set_module_cfg(vfe, 0);
  ops->set_realign_cfg(vfe, line, 0);
  ops->set_xbar_cfg(vfe, output, 0);

  ops->set_camif_cmd(vfe, 0);
  spin_unlock_irqrestore(&vfe->output_lock, flags);

  ops->camif_wait_for_stop(vfe, vfe->camss->dev);
 }

 return 0;
}
