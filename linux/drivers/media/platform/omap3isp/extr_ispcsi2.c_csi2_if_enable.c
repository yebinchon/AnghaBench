
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct isp_device {int dummy; } ;
struct isp_csi2_ctrl_cfg {scalar_t__ if_enable; } ;
struct isp_csi2_device {int regs1; struct isp_csi2_ctrl_cfg ctrl; } ;


 int ISPCSI2_CTRL ;
 int ISPCSI2_CTRL_IF_EN ;
 int isp_reg_clr_set (struct isp_device*,int ,int ,int ,int ) ;

__attribute__((used)) static void csi2_if_enable(struct isp_device *isp,
      struct isp_csi2_device *csi2, u8 enable)
{
 struct isp_csi2_ctrl_cfg *currctrl = &csi2->ctrl;

 isp_reg_clr_set(isp, csi2->regs1, ISPCSI2_CTRL, ISPCSI2_CTRL_IF_EN,
   enable ? ISPCSI2_CTRL_IF_EN : 0);

 currctrl->if_enable = enable;
}
