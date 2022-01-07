
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prev_params {int dummy; } ;
struct TYPE_2__ {int cfa_order; int active; struct prev_params* params; } ;
struct isp_prev_device {TYPE_1__ params; } ;
struct isp_format_info {int width; int flavor; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_PCR ;
 int ISPPRV_PCR_CFAEN ;
 int ISPPRV_PCR_CFAFMT_BAYER ;
 int ISPPRV_PCR_CFAFMT_MASK ;
 int ISPPRV_PCR_WIDTH ;




 int OMAP3ISP_PREV_CFA ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_clr (struct isp_device*,int ,int ,int ) ;
 int isp_reg_clr_set (struct isp_device*,int ,int ,int ,int ) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;
 int preview_config_cfa (struct isp_prev_device*,struct prev_params*) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void preview_config_input_format(struct isp_prev_device *prev,
     const struct isp_format_info *info)
{
 struct isp_device *isp = to_isp_device(prev);
 struct prev_params *params;

 if (info->width == 8)
  isp_reg_set(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
       ISPPRV_PCR_WIDTH);
 else
  isp_reg_clr(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
       ISPPRV_PCR_WIDTH);

 switch (info->flavor) {
 case 129:
  prev->params.cfa_order = 0;
  break;
 case 128:
  prev->params.cfa_order = 1;
  break;
 case 131:
  prev->params.cfa_order = 2;
  break;
 case 130:
  prev->params.cfa_order = 3;
  break;
 default:

  isp_reg_clr(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
       ISPPRV_PCR_CFAEN);
  return;
 }

 isp_reg_set(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR, ISPPRV_PCR_CFAEN);
 isp_reg_clr_set(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
   ISPPRV_PCR_CFAFMT_MASK, ISPPRV_PCR_CFAFMT_BAYER);

 params = (prev->params.active & OMAP3ISP_PREV_CFA)
        ? &prev->params.params[0] : &prev->params.params[1];

 preview_config_cfa(prev, params);
}
