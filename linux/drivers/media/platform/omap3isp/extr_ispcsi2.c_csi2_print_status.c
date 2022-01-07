
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dev; } ;
struct isp_csi2_device {int regs1; int available; struct isp_device* isp; } ;


 int CSI2_PRINT_REGISTER (struct isp_device*,int ,int ) ;
 int CTRL ;
 int CTX_CTRL1 (int ) ;
 int CTX_CTRL2 (int ) ;
 int CTX_CTRL3 (int ) ;
 int CTX_DAT_OFST (int ) ;
 int CTX_DAT_PING_ADDR (int ) ;
 int CTX_DAT_PONG_ADDR (int ) ;
 int CTX_IRQENABLE (int ) ;
 int CTX_IRQSTATUS (int ) ;
 int DBG_H ;
 int DBG_P ;
 int GNQ ;
 int IRQENABLE ;
 int IRQSTATUS ;
 int PHY_CFG ;
 int PHY_IRQENABLE ;
 int PHY_IRQSTATUS ;
 int SHORT_PACKET ;
 int SYSCONFIG ;
 int SYSSTATUS ;
 int TIMING ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static void csi2_print_status(struct isp_csi2_device *csi2)
{
 struct isp_device *isp = csi2->isp;

 if (!csi2->available)
  return;

 dev_dbg(isp->dev, "-------------CSI2 Register dump-------------\n");

 CSI2_PRINT_REGISTER(isp, csi2->regs1, SYSCONFIG);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, SYSSTATUS);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, IRQENABLE);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, IRQSTATUS);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, CTRL);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, DBG_H);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, GNQ);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, PHY_CFG);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, PHY_IRQSTATUS);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, SHORT_PACKET);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, PHY_IRQENABLE);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, DBG_P);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, TIMING);
 CSI2_PRINT_REGISTER(isp, csi2->regs1, CTX_CTRL1(0));
 CSI2_PRINT_REGISTER(isp, csi2->regs1, CTX_CTRL2(0));
 CSI2_PRINT_REGISTER(isp, csi2->regs1, CTX_DAT_OFST(0));
 CSI2_PRINT_REGISTER(isp, csi2->regs1, CTX_DAT_PING_ADDR(0));
 CSI2_PRINT_REGISTER(isp, csi2->regs1, CTX_DAT_PONG_ADDR(0));
 CSI2_PRINT_REGISTER(isp, csi2->regs1, CTX_IRQENABLE(0));
 CSI2_PRINT_REGISTER(isp, csi2->regs1, CTX_IRQSTATUS(0));
 CSI2_PRINT_REGISTER(isp, csi2->regs1, CTX_CTRL3(0));

 dev_dbg(isp->dev, "--------------------------------------------\n");
}
