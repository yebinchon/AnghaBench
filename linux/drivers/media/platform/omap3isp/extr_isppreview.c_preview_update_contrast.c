
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct prev_params {int contrast; int update; } ;
struct TYPE_2__ {int active; int lock; struct prev_params* params; } ;
struct isp_prev_device {TYPE_1__ params; } ;


 int ISPPRV_CONTRAST_UNITS ;
 int OMAP3ISP_PREV_CONTRAST ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
preview_update_contrast(struct isp_prev_device *prev, u8 contrast)
{
 struct prev_params *params;
 unsigned long flags;

 spin_lock_irqsave(&prev->params.lock, flags);
 params = (prev->params.active & OMAP3ISP_PREV_CONTRAST)
        ? &prev->params.params[0] : &prev->params.params[1];

 if (params->contrast != (contrast * ISPPRV_CONTRAST_UNITS)) {
  params->contrast = contrast * ISPPRV_CONTRAST_UNITS;
  params->update |= OMAP3ISP_PREV_CONTRAST;
 }
 spin_unlock_irqrestore(&prev->params.lock, flags);
}
