
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap3isp_prev_csup {int gain; int thres; int hypf_en; } ;
struct prev_params {struct omap3isp_prev_csup csup; } ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_CSUP ;
 int ISPPRV_CSUP_HPYF_SHIFT ;
 int ISPPRV_CSUP_THRES_SHIFT ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void
preview_config_chroma_suppression(struct isp_prev_device *prev,
      const struct prev_params *params)
{
 struct isp_device *isp = to_isp_device(prev);
 const struct omap3isp_prev_csup *cs = &params->csup;

 isp_reg_writel(isp,
         cs->gain | (cs->thres << ISPPRV_CSUP_THRES_SHIFT) |
         (cs->hypf_en << ISPPRV_CSUP_HPYF_SHIFT),
         OMAP3_ISP_IOMEM_PREV, ISPPRV_CSUP);
}
