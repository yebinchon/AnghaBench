
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap3isp_prev_hmed {int odddist; int evendist; int thres; } ;
struct prev_params {struct omap3isp_prev_hmed hmed; } ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_HMED ;
 int ISPPRV_HMED_EVENDIST ;
 int ISPPRV_HMED_ODDDIST ;
 int ISPPRV_HMED_THRESHOLD_SHIFT ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void preview_config_hmed(struct isp_prev_device *prev,
    const struct prev_params *params)
{
 struct isp_device *isp = to_isp_device(prev);
 const struct omap3isp_prev_hmed *hmed = &params->hmed;

 isp_reg_writel(isp, (hmed->odddist == 1 ? 0 : ISPPRV_HMED_ODDDIST) |
         (hmed->evendist == 1 ? 0 : ISPPRV_HMED_EVENDIST) |
         (hmed->thres << ISPPRV_HMED_THRESHOLD_SHIFT),
         OMAP3_ISP_IOMEM_PREV, ISPPRV_HMED);
}
