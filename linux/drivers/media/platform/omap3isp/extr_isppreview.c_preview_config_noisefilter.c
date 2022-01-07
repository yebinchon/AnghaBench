
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap3isp_prev_nf {int * table; int spread; } ;
struct prev_params {struct omap3isp_prev_nf nf; } ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_NF ;
 int ISPPRV_NF_TABLE_ADDR ;
 int ISPPRV_SET_TBL_ADDR ;
 int ISPPRV_SET_TBL_DATA ;
 unsigned int OMAP3ISP_PREV_NF_TBL_SIZE ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void
preview_config_noisefilter(struct isp_prev_device *prev,
      const struct prev_params *params)
{
 struct isp_device *isp = to_isp_device(prev);
 const struct omap3isp_prev_nf *nf = &params->nf;
 unsigned int i;

 isp_reg_writel(isp, nf->spread, OMAP3_ISP_IOMEM_PREV, ISPPRV_NF);
 isp_reg_writel(isp, ISPPRV_NF_TABLE_ADDR,
         OMAP3_ISP_IOMEM_PREV, ISPPRV_SET_TBL_ADDR);
 for (i = 0; i < OMAP3ISP_PREV_NF_TBL_SIZE; i++) {
  isp_reg_writel(isp, nf->table[i],
          OMAP3_ISP_IOMEM_PREV, ISPPRV_SET_TBL_DATA);
 }
}
