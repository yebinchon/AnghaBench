
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_mbus_framefmt {int code; int width; } ;
struct TYPE_2__ {int lock; int active; } ;
struct isp_prev_device {scalar_t__ input; int output; TYPE_1__ params; struct v4l2_mbus_framefmt* formats; } ;
struct isp_format_info {int bpp; } ;
struct isp_device {int dummy; } ;


 int ALIGN (int ,int) ;
 int ISPPRV_PCR ;
 int ISPPRV_PCR_RSZPORT ;
 int ISPPRV_PCR_SDRPORT ;
 int OMAP3_ISP_IOMEM_PREV ;
 scalar_t__ PREVIEW_INPUT_CCDC ;
 int PREVIEW_OUTPUT_MEMORY ;
 int PREVIEW_OUTPUT_RESIZER ;
 size_t PREV_PAD_SINK ;
 size_t PREV_PAD_SOURCE ;
 int isp_reg_clr (struct isp_device*,int ,int ,int ) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;
 struct isp_format_info* omap3isp_video_format_info (int ) ;
 int preview_adjust_bandwidth (struct isp_prev_device*) ;
 int preview_config_averager (struct isp_prev_device*,int ) ;
 int preview_config_inlineoffset (struct isp_prev_device*,int) ;
 int preview_config_input_format (struct isp_prev_device*,struct isp_format_info const*) ;
 int preview_config_input_size (struct isp_prev_device*,int ) ;
 int preview_config_outlineoffset (struct isp_prev_device*,int) ;
 int preview_config_ycpos (struct isp_prev_device*,int ) ;
 int preview_params_lock (struct isp_prev_device*,int ,int) ;
 int preview_params_unlock (struct isp_prev_device*,int ,int) ;
 int preview_setup_hw (struct isp_prev_device*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void preview_configure(struct isp_prev_device *prev)
{
 struct isp_device *isp = to_isp_device(prev);
 const struct isp_format_info *info;
 struct v4l2_mbus_framefmt *format;
 unsigned long flags;
 u32 update;
 u32 active;

 spin_lock_irqsave(&prev->params.lock, flags);

 update = preview_params_lock(prev, 0, 0);
 active = prev->params.active;
 spin_unlock_irqrestore(&prev->params.lock, flags);


 format = &prev->formats[PREV_PAD_SINK];
 info = omap3isp_video_format_info(format->code);

 preview_adjust_bandwidth(prev);

 preview_config_input_format(prev, info);
 preview_config_input_size(prev, active);

 if (prev->input == PREVIEW_INPUT_CCDC)
  preview_config_inlineoffset(prev, 0);
 else
  preview_config_inlineoffset(prev, ALIGN(format->width, 0x20) *
         info->bpp);

 preview_setup_hw(prev, update, active);


 format = &prev->formats[PREV_PAD_SOURCE];

 if (prev->output & PREVIEW_OUTPUT_MEMORY)
  isp_reg_set(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
       ISPPRV_PCR_SDRPORT);
 else
  isp_reg_clr(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
       ISPPRV_PCR_SDRPORT);

 if (prev->output & PREVIEW_OUTPUT_RESIZER)
  isp_reg_set(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
       ISPPRV_PCR_RSZPORT);
 else
  isp_reg_clr(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
       ISPPRV_PCR_RSZPORT);

 if (prev->output & PREVIEW_OUTPUT_MEMORY)
  preview_config_outlineoffset(prev,
    ALIGN(format->width, 0x10) * 2);

 preview_config_averager(prev, 0);
 preview_config_ycpos(prev, format->code);

 spin_lock_irqsave(&prev->params.lock, flags);
 preview_params_unlock(prev, update, 0);
 spin_unlock_irqrestore(&prev->params.lock, flags);
}
