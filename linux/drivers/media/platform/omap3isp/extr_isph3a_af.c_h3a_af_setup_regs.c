
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int threshold; scalar_t__ enable; } ;
struct TYPE_7__ {int h_start; int* coeff_set0; int* coeff_set1; } ;
struct TYPE_6__ {int width; int height; int line_inc; int v_cnt; int h_cnt; int h_start; int v_start; } ;
struct omap3isp_h3a_af_config {int rgb_pos; scalar_t__ fvmode; int buf_size; TYPE_4__ hmf; scalar_t__ alaw_enable; TYPE_3__ iir; TYPE_2__ paxel; } ;
struct ispstat {scalar_t__ state; int buf_size; scalar_t__ inc_config; int config_counter; scalar_t__ update; int isp; TYPE_1__* active_buf; } ;
struct TYPE_5__ {int dma_addr; } ;


 scalar_t__ AFCOEF_OFFSET ;
 int AF_ALAW_EN ;
 int AF_COEF_SHIFT ;
 int AF_FVMODE ;
 int AF_HZ_START_SHIFT ;
 int AF_LINE_INCR_SHIFT ;
 int AF_MED_EN ;
 int AF_MED_TH_SHIFT ;
 int AF_PAXW_SHIFT ;
 int AF_PCR_MASK ;
 int AF_RGBPOS_SHIFT ;
 int AF_VT_COUNT_SHIFT ;
 int ISPH3A_AFBUFST ;
 int ISPH3A_AFCOEF0010 ;
 int ISPH3A_AFCOEF010 ;
 int ISPH3A_AFCOEF1010 ;
 int ISPH3A_AFCOEF110 ;
 int ISPH3A_AFIIRSH ;
 int ISPH3A_AFPAX1 ;
 int ISPH3A_AFPAX2 ;
 int ISPH3A_AFPAXSTART ;
 int ISPH3A_PCR ;
 scalar_t__ ISPSTAT_DISABLED ;
 scalar_t__ OMAP3ISP_AF_MODE_PEAK ;
 int OMAP3_ISP_IOMEM_H3A ;
 int isp_reg_clr_set (int ,int ,int ,int ,int) ;
 int isp_reg_writel (int ,int,int ,int) ;

__attribute__((used)) static void h3a_af_setup_regs(struct ispstat *af, void *priv)
{
 struct omap3isp_h3a_af_config *conf = priv;
 u32 pcr;
 u32 pax1;
 u32 pax2;
 u32 paxstart;
 u32 coef;
 u32 base_coef_set0;
 u32 base_coef_set1;
 int index;

 if (af->state == ISPSTAT_DISABLED)
  return;

 isp_reg_writel(af->isp, af->active_buf->dma_addr, OMAP3_ISP_IOMEM_H3A,
         ISPH3A_AFBUFST);

 if (!af->update)
  return;


 pax1 = ((conf->paxel.width >> 1) - 1) << AF_PAXW_SHIFT;

 pax1 |= (conf->paxel.height >> 1) - 1;
 isp_reg_writel(af->isp, pax1, OMAP3_ISP_IOMEM_H3A, ISPH3A_AFPAX1);



 pax2 = ((conf->paxel.line_inc >> 1) - 1) << AF_LINE_INCR_SHIFT;

 pax2 |= (conf->paxel.v_cnt - 1) << AF_VT_COUNT_SHIFT;

 pax2 |= (conf->paxel.h_cnt - 1);
 isp_reg_writel(af->isp, pax2, OMAP3_ISP_IOMEM_H3A, ISPH3A_AFPAX2);



 paxstart = conf->paxel.h_start << AF_HZ_START_SHIFT;

 paxstart |= conf->paxel.v_start;
 isp_reg_writel(af->isp, paxstart, OMAP3_ISP_IOMEM_H3A,
         ISPH3A_AFPAXSTART);


 isp_reg_writel(af->isp, conf->iir.h_start,
         OMAP3_ISP_IOMEM_H3A, ISPH3A_AFIIRSH);

 base_coef_set0 = ISPH3A_AFCOEF010;
 base_coef_set1 = ISPH3A_AFCOEF110;
 for (index = 0; index <= 8; index += 2) {

  coef = 0;
  coef |= conf->iir.coeff_set0[index];
  coef |= conf->iir.coeff_set0[index + 1] <<
   AF_COEF_SHIFT;
  isp_reg_writel(af->isp, coef, OMAP3_ISP_IOMEM_H3A,
          base_coef_set0);
  base_coef_set0 += AFCOEF_OFFSET;


  coef = 0;
  coef |= conf->iir.coeff_set1[index];
  coef |= conf->iir.coeff_set1[index + 1] <<
   AF_COEF_SHIFT;
  isp_reg_writel(af->isp, coef, OMAP3_ISP_IOMEM_H3A,
          base_coef_set1);
  base_coef_set1 += AFCOEF_OFFSET;
 }

 isp_reg_writel(af->isp, conf->iir.coeff_set0[10],
         OMAP3_ISP_IOMEM_H3A, ISPH3A_AFCOEF0010);

 isp_reg_writel(af->isp, conf->iir.coeff_set1[10],
         OMAP3_ISP_IOMEM_H3A, ISPH3A_AFCOEF1010);



 pcr = conf->rgb_pos << AF_RGBPOS_SHIFT;

 if (conf->fvmode == OMAP3ISP_AF_MODE_PEAK)
  pcr |= AF_FVMODE;

 if (conf->alaw_enable)
  pcr |= AF_ALAW_EN;

 if (conf->hmf.enable) {

  pcr |= AF_MED_EN;

  pcr |= conf->hmf.threshold << AF_MED_TH_SHIFT;
 }

 isp_reg_clr_set(af->isp, OMAP3_ISP_IOMEM_H3A, ISPH3A_PCR,
   AF_PCR_MASK, pcr);

 af->update = 0;
 af->config_counter += af->inc_config;
 af->inc_config = 0;
 af->buf_size = conf->buf_size;
}
