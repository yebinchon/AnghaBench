
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_prev_device {scalar_t__ input; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_PCR ;
 int ISPPRV_PCR_EN ;
 int ISPPRV_PCR_ONESHOT ;
 int ISPPRV_PCR_SOURCE ;
 int OMAP3_ISP_IOMEM_PREV ;
 scalar_t__ PREVIEW_INPUT_MEMORY ;
 int isp_reg_set (struct isp_device*,int ,int ,int) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void preview_enable_oneshot(struct isp_prev_device *prev)
{
 struct isp_device *isp = to_isp_device(prev);





 if (prev->input == PREVIEW_INPUT_MEMORY)
  isp_reg_set(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
       ISPPRV_PCR_SOURCE);

 isp_reg_set(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
      ISPPRV_PCR_EN | ISPPRV_PCR_ONESHOT);
}
