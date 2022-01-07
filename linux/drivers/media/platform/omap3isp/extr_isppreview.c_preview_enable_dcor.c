
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_PCR ;
 int ISPPRV_PCR_DCOREN ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_clr (struct isp_device*,int ,int ,int ) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void preview_enable_dcor(struct isp_prev_device *prev, bool enable)
{
 struct isp_device *isp = to_isp_device(prev);

 if (enable)
  isp_reg_set(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
       ISPPRV_PCR_DCOREN);
 else
  isp_reg_clr(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
       ISPPRV_PCR_DCOREN);
}
