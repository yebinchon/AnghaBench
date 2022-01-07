
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dev; } ;


 int CTRL ;
 int IRQ0ENABLE ;
 int IRQ0STATUS ;
 int ISP_PRINT_REGISTER (struct isp_device*,int ) ;
 int PCR ;
 int SBL_PRINT_REGISTER (struct isp_device*,int ) ;
 int SDR_REQ_EXP ;
 int SYSCONFIG ;
 int SYSSTATUS ;
 int TCTRL_CTRL ;
 int TCTRL_FRAME ;
 int TCTRL_GRESET_LENGTH ;
 int TCTRL_PSTRB_DELAY ;
 int TCTRL_PSTRB_LENGTH ;
 int TCTRL_PSTRB_REPLAY ;
 int TCTRL_SHUT_DELAY ;
 int TCTRL_SHUT_LENGTH ;
 int TCTRL_STRB_DELAY ;
 int TCTRL_STRB_LENGTH ;
 int dev_dbg (int ,char*) ;

void omap3isp_print_status(struct isp_device *isp)
{
 dev_dbg(isp->dev, "-------------ISP Register dump--------------\n");

 ISP_PRINT_REGISTER(isp, SYSCONFIG);
 ISP_PRINT_REGISTER(isp, SYSSTATUS);
 ISP_PRINT_REGISTER(isp, IRQ0ENABLE);
 ISP_PRINT_REGISTER(isp, IRQ0STATUS);
 ISP_PRINT_REGISTER(isp, TCTRL_GRESET_LENGTH);
 ISP_PRINT_REGISTER(isp, TCTRL_PSTRB_REPLAY);
 ISP_PRINT_REGISTER(isp, CTRL);
 ISP_PRINT_REGISTER(isp, TCTRL_CTRL);
 ISP_PRINT_REGISTER(isp, TCTRL_FRAME);
 ISP_PRINT_REGISTER(isp, TCTRL_PSTRB_DELAY);
 ISP_PRINT_REGISTER(isp, TCTRL_STRB_DELAY);
 ISP_PRINT_REGISTER(isp, TCTRL_SHUT_DELAY);
 ISP_PRINT_REGISTER(isp, TCTRL_PSTRB_LENGTH);
 ISP_PRINT_REGISTER(isp, TCTRL_STRB_LENGTH);
 ISP_PRINT_REGISTER(isp, TCTRL_SHUT_LENGTH);

 SBL_PRINT_REGISTER(isp, PCR);
 SBL_PRINT_REGISTER(isp, SDR_REQ_EXP);

 dev_dbg(isp->dev, "--------------------------------------------\n");
}
