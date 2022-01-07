
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {scalar_t__ state; int isp; } ;


 int ISPHIST_CNT ;
 int ISPHIST_CNT_CLEAR ;
 scalar_t__ ISPSTAT_DISABLED ;
 int OMAP3_ISP_IOMEM_HIST ;
 int isp_reg_clr (int ,int ,int ,int ) ;
 int omap3isp_hist_dma_done (int ) ;
 int omap3isp_stat_dma_isr (struct ispstat*) ;

__attribute__((used)) static void hist_dma_cb(void *data)
{
 struct ispstat *hist = data;



 isp_reg_clr(hist->isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_CNT,
      ISPHIST_CNT_CLEAR);

 omap3isp_stat_dma_isr(hist);
 if (hist->state != ISPSTAT_DISABLED)
  omap3isp_hist_dma_done(hist->isp);
}
