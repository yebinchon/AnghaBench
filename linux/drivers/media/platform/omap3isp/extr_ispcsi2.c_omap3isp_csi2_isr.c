
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isp_pipeline {int error; } ;
struct isp_device {int dev; } ;
struct TYPE_2__ {int entity; } ;
struct isp_csi2_device {int * contexts; int stopping; int wait; int regs1; int available; struct isp_device* isp; TYPE_1__ subdev; } ;


 int ISPCSI2_IRQSTATUS ;
 int ISPCSI2_IRQSTATUS_COMPLEXIO1_ERR_IRQ ;
 int ISPCSI2_IRQSTATUS_COMPLEXIO2_ERR_IRQ ;
 int ISPCSI2_IRQSTATUS_CONTEXT (int ) ;
 int ISPCSI2_IRQSTATUS_ECC_CORRECTION_IRQ ;
 int ISPCSI2_IRQSTATUS_ECC_NO_CORRECTION_IRQ ;
 int ISPCSI2_IRQSTATUS_FIFO_OVF_IRQ ;
 int ISPCSI2_IRQSTATUS_OCP_ERR_IRQ ;
 int ISPCSI2_IRQSTATUS_SHORT_PACKET_IRQ ;
 int ISPCSI2_PHY_IRQSTATUS ;
 int csi2_isr_ctx (struct isp_csi2_device*,int *) ;
 int dev_dbg (int ,char*,...) ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 scalar_t__ omap3isp_module_sync_is_stopping (int *,int *) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;

void omap3isp_csi2_isr(struct isp_csi2_device *csi2)
{
 struct isp_pipeline *pipe = to_isp_pipeline(&csi2->subdev.entity);
 u32 csi2_irqstatus, cpxio1_irqstatus;
 struct isp_device *isp = csi2->isp;

 if (!csi2->available)
  return;

 csi2_irqstatus = isp_reg_readl(isp, csi2->regs1, ISPCSI2_IRQSTATUS);
 isp_reg_writel(isp, csi2_irqstatus, csi2->regs1, ISPCSI2_IRQSTATUS);


 if (csi2_irqstatus & ISPCSI2_IRQSTATUS_COMPLEXIO1_ERR_IRQ) {
  cpxio1_irqstatus = isp_reg_readl(isp, csi2->regs1,
       ISPCSI2_PHY_IRQSTATUS);
  isp_reg_writel(isp, cpxio1_irqstatus,
          csi2->regs1, ISPCSI2_PHY_IRQSTATUS);
  dev_dbg(isp->dev, "CSI2: ComplexIO Error IRQ %x\n",
   cpxio1_irqstatus);
  pipe->error = 1;
 }

 if (csi2_irqstatus & (ISPCSI2_IRQSTATUS_OCP_ERR_IRQ |
         ISPCSI2_IRQSTATUS_SHORT_PACKET_IRQ |
         ISPCSI2_IRQSTATUS_ECC_NO_CORRECTION_IRQ |
         ISPCSI2_IRQSTATUS_COMPLEXIO2_ERR_IRQ |
         ISPCSI2_IRQSTATUS_FIFO_OVF_IRQ)) {
  dev_dbg(isp->dev,
   "CSI2 Err: OCP:%d, Short_pack:%d, ECC:%d, CPXIO2:%d, FIFO_OVF:%d,\n",
   (csi2_irqstatus &
    ISPCSI2_IRQSTATUS_OCP_ERR_IRQ) ? 1 : 0,
   (csi2_irqstatus &
    ISPCSI2_IRQSTATUS_SHORT_PACKET_IRQ) ? 1 : 0,
   (csi2_irqstatus &
    ISPCSI2_IRQSTATUS_ECC_NO_CORRECTION_IRQ) ? 1 : 0,
   (csi2_irqstatus &
    ISPCSI2_IRQSTATUS_COMPLEXIO2_ERR_IRQ) ? 1 : 0,
   (csi2_irqstatus &
    ISPCSI2_IRQSTATUS_FIFO_OVF_IRQ) ? 1 : 0);
  pipe->error = 1;
 }

 if (omap3isp_module_sync_is_stopping(&csi2->wait, &csi2->stopping))
  return;


 if (csi2_irqstatus & ISPCSI2_IRQSTATUS_CONTEXT(0))
  csi2_isr_ctx(csi2, &csi2->contexts[0]);

 if (csi2_irqstatus & ISPCSI2_IRQSTATUS_ECC_CORRECTION_IRQ)
  dev_dbg(isp->dev, "CSI2: ECC correction done\n");
}
