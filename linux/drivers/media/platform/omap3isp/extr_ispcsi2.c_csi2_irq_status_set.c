
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_device {int dummy; } ;
struct isp_csi2_device {int regs1; } ;


 int ISPCSI2_IRQENABLE ;
 int ISPCSI2_IRQSTATUS ;
 int ISPCSI2_IRQSTATUS_COMPLEXIO1_ERR_IRQ ;
 int ISPCSI2_IRQSTATUS_COMPLEXIO2_ERR_IRQ ;
 int ISPCSI2_IRQSTATUS_CONTEXT (int ) ;
 int ISPCSI2_IRQSTATUS_ECC_CORRECTION_IRQ ;
 int ISPCSI2_IRQSTATUS_ECC_NO_CORRECTION_IRQ ;
 int ISPCSI2_IRQSTATUS_FIFO_OVF_IRQ ;
 int ISPCSI2_IRQSTATUS_OCP_ERR_IRQ ;
 int ISPCSI2_IRQSTATUS_SHORT_PACKET_IRQ ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;

__attribute__((used)) static void csi2_irq_status_set(struct isp_device *isp,
    struct isp_csi2_device *csi2, int enable)
{
 u32 reg;
 reg = ISPCSI2_IRQSTATUS_OCP_ERR_IRQ |
  ISPCSI2_IRQSTATUS_SHORT_PACKET_IRQ |
  ISPCSI2_IRQSTATUS_ECC_CORRECTION_IRQ |
  ISPCSI2_IRQSTATUS_ECC_NO_CORRECTION_IRQ |
  ISPCSI2_IRQSTATUS_COMPLEXIO2_ERR_IRQ |
  ISPCSI2_IRQSTATUS_COMPLEXIO1_ERR_IRQ |
  ISPCSI2_IRQSTATUS_FIFO_OVF_IRQ |
  ISPCSI2_IRQSTATUS_CONTEXT(0);
 isp_reg_writel(isp, reg, csi2->regs1, ISPCSI2_IRQSTATUS);
 if (enable)
  reg |= isp_reg_readl(isp, csi2->regs1, ISPCSI2_IRQENABLE);
 else
  reg = 0;

 isp_reg_writel(isp, reg, csi2->regs1, ISPCSI2_IRQENABLE);
}
