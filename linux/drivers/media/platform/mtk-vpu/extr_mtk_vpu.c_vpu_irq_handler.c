
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ws; int wq; } ;
struct mtk_vpu {int clk; TYPE_1__ wdt; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int VPU_IPC_INT ;
 int VPU_TO_HOST ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int queue_work (int ,int *) ;
 int vpu_cfg_readl (struct mtk_vpu*,int ) ;
 int vpu_cfg_writel (struct mtk_vpu*,int,int ) ;
 int vpu_ipi_handler (struct mtk_vpu*) ;

__attribute__((used)) static irqreturn_t vpu_irq_handler(int irq, void *priv)
{
 struct mtk_vpu *vpu = priv;
 u32 vpu_to_host;
 int ret;






 ret = clk_enable(vpu->clk);
 if (ret) {
  dev_err(vpu->dev, "[VPU] enable clock failed %d\n", ret);
  return IRQ_NONE;
 }
 vpu_to_host = vpu_cfg_readl(vpu, VPU_TO_HOST);
 if (vpu_to_host & VPU_IPC_INT) {
  vpu_ipi_handler(vpu);
 } else {
  dev_err(vpu->dev, "vpu watchdog timeout! 0x%x", vpu_to_host);
  queue_work(vpu->wdt.wq, &vpu->wdt.ws);
 }


 vpu_cfg_writel(vpu, 0x0, VPU_TO_HOST);
 clk_disable(vpu->clk);

 return IRQ_HANDLED;
}
