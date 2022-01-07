
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int lock; int active; } ;
struct isp_prev_device {scalar_t__ input; int output; scalar_t__ state; TYPE_1__ params; int stopping; int wait; } ;


 scalar_t__ ISP_PIPELINE_STREAM_CONTINUOUS ;
 scalar_t__ PREVIEW_INPUT_MEMORY ;
 int PREVIEW_OUTPUT_MEMORY ;
 scalar_t__ omap3isp_module_sync_is_stopping (int *,int *) ;
 int preview_config_input_size (struct isp_prev_device*,int ) ;
 int preview_enable_oneshot (struct isp_prev_device*) ;
 int preview_isr_buffer (struct isp_prev_device*) ;
 int preview_params_lock (struct isp_prev_device*,int ,int) ;
 int preview_params_switch (struct isp_prev_device*) ;
 int preview_params_unlock (struct isp_prev_device*,int ,int) ;
 int preview_setup_hw (struct isp_prev_device*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void omap3isp_preview_isr(struct isp_prev_device *prev)
{
 unsigned long flags;
 u32 update;
 u32 active;

 if (omap3isp_module_sync_is_stopping(&prev->wait, &prev->stopping))
  return;

 spin_lock_irqsave(&prev->params.lock, flags);
 preview_params_switch(prev);
 update = preview_params_lock(prev, 0, 0);
 active = prev->params.active;
 spin_unlock_irqrestore(&prev->params.lock, flags);

 preview_setup_hw(prev, update, active);
 preview_config_input_size(prev, active);

 if (prev->input == PREVIEW_INPUT_MEMORY ||
     prev->output & PREVIEW_OUTPUT_MEMORY)
  preview_isr_buffer(prev);
 else if (prev->state == ISP_PIPELINE_STREAM_CONTINUOUS)
  preview_enable_oneshot(prev);

 spin_lock_irqsave(&prev->params.lock, flags);
 preview_params_unlock(prev, update, 0);
 spin_unlock_irqrestore(&prev->params.lock, flags);
}
