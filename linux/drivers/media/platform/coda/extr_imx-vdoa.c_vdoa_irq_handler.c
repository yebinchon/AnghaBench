
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vdoa_data {int dev; scalar_t__ regs; struct vdoa_ctx* curr_ctx; } ;
struct vdoa_ctx {int completion; int completed_job; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ VDOAIE ;
 scalar_t__ VDOAIST ;
 int VDOAIST_EOT ;
 int VDOAIST_TERR ;
 scalar_t__ VDOASR ;
 int VDOASR_ERRW ;
 int complete (int *) ;
 int dev_err (int ,char*,char*) ;
 int dev_warn (int ,char*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t vdoa_irq_handler(int irq, void *data)
{
 struct vdoa_data *vdoa = data;
 struct vdoa_ctx *curr_ctx;
 u32 val;


 writel(0, vdoa->regs + VDOAIE);

 curr_ctx = vdoa->curr_ctx;
 if (!curr_ctx) {
  dev_warn(vdoa->dev,
   "Instance released before the end of transaction\n");
  return IRQ_HANDLED;
 }

 val = readl(vdoa->regs + VDOAIST);
 writel(val, vdoa->regs + VDOAIST);
 if (val & VDOAIST_TERR) {
  val = readl(vdoa->regs + VDOASR) & VDOASR_ERRW;
  dev_err(vdoa->dev, "AXI %s error\n", val ? "write" : "read");
 } else if (!(val & VDOAIST_EOT)) {
  dev_warn(vdoa->dev, "Spurious interrupt\n");
 }
 curr_ctx->completed_job++;
 complete(&curr_ctx->completion);

 return IRQ_HANDLED;
}
