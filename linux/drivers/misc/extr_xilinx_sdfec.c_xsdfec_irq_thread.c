
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xsdfec_dev {int irq; int uecc_count; int isr_err_count; int stats_updated; int state_updated; int waitq; int dev; int flags; int error_data_lock; void* state; int cecc_count; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WARN_ON (int) ;
 int XSDFEC_ALL_ECC_ISR_MBE_MASK ;
 int XSDFEC_ECC_ISR_ADDR ;
 int XSDFEC_ECC_ISR_MBE_MASK ;
 int XSDFEC_ISR_ADDR ;
 void* XSDFEC_NEEDS_RESET ;
 int XSDFEC_PL_INIT_ECC_ISR_MBE_MASK ;
 void* XSDFEC_PL_RECONFIGURE ;
 int dev_dbg (int ,char*,int,int,...) ;
 int hweight32 (int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int wake_up_interruptible (int *) ;
 int xsdfec_ecc_isr_enable (struct xsdfec_dev*,int) ;
 int xsdfec_isr_enable (struct xsdfec_dev*,int) ;
 int xsdfec_regread (struct xsdfec_dev*,int ) ;
 int xsdfec_regwrite (struct xsdfec_dev*,int ,int) ;

__attribute__((used)) static irqreturn_t xsdfec_irq_thread(int irq, void *dev_id)
{
 struct xsdfec_dev *xsdfec = dev_id;
 irqreturn_t ret = IRQ_HANDLED;
 u32 ecc_err;
 u32 isr_err;
 u32 uecc_count;
 u32 cecc_count;
 u32 isr_err_count;
 u32 aecc_count;
 u32 tmp;

 WARN_ON(xsdfec->irq != irq);


 xsdfec_isr_enable(xsdfec, 0);
 xsdfec_ecc_isr_enable(xsdfec, 0);

 ecc_err = xsdfec_regread(xsdfec, XSDFEC_ECC_ISR_ADDR);
 isr_err = xsdfec_regread(xsdfec, XSDFEC_ISR_ADDR);

 xsdfec_regwrite(xsdfec, XSDFEC_ECC_ISR_ADDR, ecc_err);
 xsdfec_regwrite(xsdfec, XSDFEC_ISR_ADDR, isr_err);

 tmp = ecc_err & XSDFEC_ALL_ECC_ISR_MBE_MASK;

 uecc_count = hweight32(tmp);

 aecc_count = hweight32(ecc_err);

 cecc_count = aecc_count - 2 * uecc_count;

 isr_err_count = hweight32(isr_err);
 dev_dbg(xsdfec->dev, "tmp=%x, uecc=%x, aecc=%x, cecc=%x, isr=%x", tmp,
  uecc_count, aecc_count, cecc_count, isr_err_count);
 dev_dbg(xsdfec->dev, "uecc=%x, cecc=%x, isr=%x", xsdfec->uecc_count,
  xsdfec->cecc_count, xsdfec->isr_err_count);

 spin_lock_irqsave(&xsdfec->error_data_lock, xsdfec->flags);

 if (uecc_count)
  xsdfec->uecc_count += uecc_count;

 if (cecc_count)
  xsdfec->cecc_count += cecc_count;

 if (isr_err_count)
  xsdfec->isr_err_count += isr_err_count;


 if (uecc_count) {
  if (ecc_err & XSDFEC_ECC_ISR_MBE_MASK)
   xsdfec->state = XSDFEC_NEEDS_RESET;
  else if (ecc_err & XSDFEC_PL_INIT_ECC_ISR_MBE_MASK)
   xsdfec->state = XSDFEC_PL_RECONFIGURE;
  xsdfec->stats_updated = 1;
  xsdfec->state_updated = 1;
 }

 if (cecc_count)
  xsdfec->stats_updated = 1;

 if (isr_err_count) {
  xsdfec->state = XSDFEC_NEEDS_RESET;
  xsdfec->stats_updated = 1;
  xsdfec->state_updated = 1;
 }

 spin_unlock_irqrestore(&xsdfec->error_data_lock, xsdfec->flags);
 dev_dbg(xsdfec->dev, "state=%x, stats=%x", xsdfec->state_updated,
  xsdfec->stats_updated);


 if (xsdfec->state_updated || xsdfec->stats_updated)
  wake_up_interruptible(&xsdfec->waitq);
 else
  ret = IRQ_NONE;


 xsdfec_isr_enable(xsdfec, 1);
 xsdfec_ecc_isr_enable(xsdfec, 1);

 return ret;
}
