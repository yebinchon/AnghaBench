
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prev_params {int contrast; } ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_CNT_BRT ;
 int ISPPRV_CNT_BRT_CNT_SHIFT ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_clr_set (struct isp_device*,int ,int ,int,int) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void
preview_config_contrast(struct isp_prev_device *prev,
   const struct prev_params *params)
{
 struct isp_device *isp = to_isp_device(prev);

 isp_reg_clr_set(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_CNT_BRT,
   0xff << ISPPRV_CNT_BRT_CNT_SHIFT,
   params->contrast << ISPPRV_CNT_BRT_CNT_SHIFT);
}
