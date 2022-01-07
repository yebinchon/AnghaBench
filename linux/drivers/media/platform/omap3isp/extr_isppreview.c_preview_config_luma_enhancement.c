
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap3isp_prev_luma {int * table; } ;
struct prev_params {struct omap3isp_prev_luma luma; } ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_SET_TBL_ADDR ;
 int ISPPRV_SET_TBL_DATA ;
 int ISPPRV_YENH_TABLE_ADDR ;
 unsigned int OMAP3ISP_PREV_YENH_TBL_SIZE ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void
preview_config_luma_enhancement(struct isp_prev_device *prev,
    const struct prev_params *params)
{
 struct isp_device *isp = to_isp_device(prev);
 const struct omap3isp_prev_luma *yt = &params->luma;
 unsigned int i;

 isp_reg_writel(isp, ISPPRV_YENH_TABLE_ADDR,
         OMAP3_ISP_IOMEM_PREV, ISPPRV_SET_TBL_ADDR);
 for (i = 0; i < OMAP3ISP_PREV_YENH_TBL_SIZE; i++) {
  isp_reg_writel(isp, yt->table[i],
          OMAP3_ISP_IOMEM_PREV, ISPPRV_SET_TBL_DATA);
 }
}
