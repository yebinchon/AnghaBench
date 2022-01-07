
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap3isp_prev_yclimit {int maxC; int maxY; int minC; int minY; } ;
struct prev_params {struct omap3isp_prev_yclimit yclimit; } ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_SETUP_YC ;
 int ISPPRV_SETUP_YC_MAXC_SHIFT ;
 int ISPPRV_SETUP_YC_MAXY_SHIFT ;
 int ISPPRV_SETUP_YC_MINC_SHIFT ;
 int ISPPRV_SETUP_YC_MINY_SHIFT ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void
preview_config_yc_range(struct isp_prev_device *prev,
   const struct prev_params *params)
{
 struct isp_device *isp = to_isp_device(prev);
 const struct omap3isp_prev_yclimit *yc = &params->yclimit;

 isp_reg_writel(isp,
         yc->maxC << ISPPRV_SETUP_YC_MAXC_SHIFT |
         yc->maxY << ISPPRV_SETUP_YC_MAXY_SHIFT |
         yc->minC << ISPPRV_SETUP_YC_MINC_SHIFT |
         yc->minY << ISPPRV_SETUP_YC_MINY_SHIFT,
         OMAP3_ISP_IOMEM_PREV, ISPPRV_SETUP_YC);
}
