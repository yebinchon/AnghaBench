
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat {scalar_t__ dma_ch; } ;
struct isp_device {struct ispstat isp_hist; } ;


 int dma_release_channel (scalar_t__) ;
 int omap3isp_stat_cleanup (struct ispstat*) ;

void omap3isp_hist_cleanup(struct isp_device *isp)
{
 struct ispstat *hist = &isp->isp_hist;

 if (hist->dma_ch)
  dma_release_channel(hist->dma_ch);

 omap3isp_stat_cleanup(hist);
}
