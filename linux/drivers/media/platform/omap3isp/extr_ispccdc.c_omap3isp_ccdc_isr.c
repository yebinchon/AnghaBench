
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_ccdc_device {scalar_t__ state; } ;


 int IRQ0STATUS_CCDC_VD0_IRQ ;
 int IRQ0STATUS_CCDC_VD1_IRQ ;
 int IRQ0STATUS_HS_VS_IRQ ;
 scalar_t__ ISP_PIPELINE_STREAM_STOPPED ;
 int ccdc_hs_vs_isr (struct isp_ccdc_device*) ;
 int ccdc_lsc_isr (struct isp_ccdc_device*,int) ;
 int ccdc_vd0_isr (struct isp_ccdc_device*) ;
 int ccdc_vd1_isr (struct isp_ccdc_device*) ;

int omap3isp_ccdc_isr(struct isp_ccdc_device *ccdc, u32 events)
{
 if (ccdc->state == ISP_PIPELINE_STREAM_STOPPED)
  return 0;

 if (events & IRQ0STATUS_CCDC_VD1_IRQ)
  ccdc_vd1_isr(ccdc);

 ccdc_lsc_isr(ccdc, events);

 if (events & IRQ0STATUS_CCDC_VD0_IRQ)
  ccdc_vd0_isr(ccdc);

 if (events & IRQ0STATUS_HS_VS_IRQ)
  ccdc_hs_vs_isr(ccdc);

 return 0;
}
