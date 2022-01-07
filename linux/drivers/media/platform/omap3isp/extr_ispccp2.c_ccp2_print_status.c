
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dev; } ;
struct isp_ccp2_device {int dummy; } ;


 int CCP2_PRINT_REGISTER (struct isp_device*,int ) ;
 int CTRL ;
 int LC01_IRQENABLE ;
 int LC01_IRQSTATUS ;
 int LC23_IRQENABLE ;
 int LC23_IRQSTATUS ;
 int LCM_CTRL ;
 int LCM_DST_ADDR ;
 int LCM_DST_OFST ;
 int LCM_HSIZE ;
 int LCM_IRQENABLE ;
 int LCM_IRQSTATUS ;
 int LCM_PREFETCH ;
 int LCM_SRC_ADDR ;
 int LCM_SRC_OFST ;
 int LCM_VSIZE ;
 int LCx_CODE (int ) ;
 int LCx_CTRL (int ) ;
 int LCx_DAT_OFST (int ) ;
 int LCx_DAT_PING_ADDR (int ) ;
 int LCx_DAT_PONG_ADDR (int ) ;
 int LCx_DAT_SIZE (int ) ;
 int LCx_DAT_START (int ) ;
 int LCx_EOF_ADDR (int ) ;
 int LCx_SOF_ADDR (int ) ;
 int LCx_STAT_SIZE (int ) ;
 int LCx_STAT_START (int ) ;
 int SYSCONFIG ;
 int SYSSTATUS ;
 int dev_dbg (int ,char*) ;
 struct isp_device* to_isp_device (struct isp_ccp2_device*) ;

__attribute__((used)) static void ccp2_print_status(struct isp_ccp2_device *ccp2)
{
 struct isp_device *isp = to_isp_device(ccp2);

 dev_dbg(isp->dev, "-------------CCP2 Register dump-------------\n");

 CCP2_PRINT_REGISTER(isp, SYSCONFIG);
 CCP2_PRINT_REGISTER(isp, SYSSTATUS);
 CCP2_PRINT_REGISTER(isp, LC01_IRQENABLE);
 CCP2_PRINT_REGISTER(isp, LC01_IRQSTATUS);
 CCP2_PRINT_REGISTER(isp, LC23_IRQENABLE);
 CCP2_PRINT_REGISTER(isp, LC23_IRQSTATUS);
 CCP2_PRINT_REGISTER(isp, LCM_IRQENABLE);
 CCP2_PRINT_REGISTER(isp, LCM_IRQSTATUS);
 CCP2_PRINT_REGISTER(isp, CTRL);
 CCP2_PRINT_REGISTER(isp, LCx_CTRL(0));
 CCP2_PRINT_REGISTER(isp, LCx_CODE(0));
 CCP2_PRINT_REGISTER(isp, LCx_STAT_START(0));
 CCP2_PRINT_REGISTER(isp, LCx_STAT_SIZE(0));
 CCP2_PRINT_REGISTER(isp, LCx_SOF_ADDR(0));
 CCP2_PRINT_REGISTER(isp, LCx_EOF_ADDR(0));
 CCP2_PRINT_REGISTER(isp, LCx_DAT_START(0));
 CCP2_PRINT_REGISTER(isp, LCx_DAT_SIZE(0));
 CCP2_PRINT_REGISTER(isp, LCx_DAT_PING_ADDR(0));
 CCP2_PRINT_REGISTER(isp, LCx_DAT_PONG_ADDR(0));
 CCP2_PRINT_REGISTER(isp, LCx_DAT_OFST(0));
 CCP2_PRINT_REGISTER(isp, LCM_CTRL);
 CCP2_PRINT_REGISTER(isp, LCM_VSIZE);
 CCP2_PRINT_REGISTER(isp, LCM_HSIZE);
 CCP2_PRINT_REGISTER(isp, LCM_PREFETCH);
 CCP2_PRINT_REGISTER(isp, LCM_SRC_ADDR);
 CCP2_PRINT_REGISTER(isp, LCM_SRC_OFST);
 CCP2_PRINT_REGISTER(isp, LCM_DST_ADDR);
 CCP2_PRINT_REGISTER(isp, LCM_DST_OFST);

 dev_dbg(isp->dev, "--------------------------------------------\n");
}
