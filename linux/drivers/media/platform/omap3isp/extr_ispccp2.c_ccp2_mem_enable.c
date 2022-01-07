
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct isp_device {int dummy; } ;
struct isp_ccp2_device {int dummy; } ;


 int ISPCCP2_CTRL ;
 int ISPCCP2_CTRL_MODE ;
 int ISPCCP2_LCM_CTRL ;
 int ISPCCP2_LCM_CTRL_CHAN_EN ;
 int OMAP3_ISP_IOMEM_CCP2 ;
 int ccp2_if_enable (struct isp_ccp2_device*,int ) ;
 int isp_reg_clr_set (struct isp_device*,int ,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccp2_device*) ;

__attribute__((used)) static void ccp2_mem_enable(struct isp_ccp2_device *ccp2, u8 enable)
{
 struct isp_device *isp = to_isp_device(ccp2);

 if (enable)
  ccp2_if_enable(ccp2, 0);


 isp_reg_clr_set(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_CTRL,
   ISPCCP2_CTRL_MODE, enable ? ISPCCP2_CTRL_MODE : 0);

 isp_reg_clr_set(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_LCM_CTRL,
   ISPCCP2_LCM_CTRL_CHAN_EN,
   enable ? ISPCCP2_LCM_CTRL_CHAN_EN : 0);
}
