
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct hva_dev {int sts_reg; int sfl_reg; int lmi_err_reg; int emi_err_reg; int hec_mif_err_reg; int interrupt; struct hva_ctx** instances; } ;
struct hva_ctx {int hw_err; int name; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 size_t HVA_MAX_INSTANCES ;
 int HVA_PREFIX ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int dev_dbg (struct device*,char*,int ,int,int) ;
 int dev_err (struct device*,char*,int ,size_t) ;
 struct device* hva_to_dev (struct hva_dev*) ;

__attribute__((used)) static irqreturn_t hva_hw_err_irq_thread(int irq, void *arg)
{
 struct hva_dev *hva = arg;
 struct device *dev = hva_to_dev(hva);
 u8 ctx_id = 0;
 struct hva_ctx *ctx;

 dev_dbg(dev, "%s     status: 0x%02x fifo level: 0x%02x\n",
  HVA_PREFIX, hva->sts_reg & 0xFF, hva->sfl_reg & 0xF);





 ctx_id = (hva->sts_reg & 0xFF00) >> 8;
 if (ctx_id >= HVA_MAX_INSTANCES) {
  dev_err(dev, "%s     bad context identifier: %d\n", HVA_PREFIX,
   ctx_id);
  goto out;
 }

 ctx = hva->instances[ctx_id];
 if (!ctx)
  goto out;

 if (hva->lmi_err_reg) {
  dev_err(dev, "%s     local memory interface error: 0x%08x\n",
   ctx->name, hva->lmi_err_reg);
  ctx->hw_err = 1;
 }

 if (hva->emi_err_reg) {
  dev_err(dev, "%s     external memory interface error: 0x%08x\n",
   ctx->name, hva->emi_err_reg);
  ctx->hw_err = 1;
 }

 if (hva->hec_mif_err_reg) {
  dev_err(dev, "%s     hec memory interface error: 0x%08x\n",
   ctx->name, hva->hec_mif_err_reg);
  ctx->hw_err = 1;
 }
out:
 complete(&hva->interrupt);

 return IRQ_HANDLED;
}
