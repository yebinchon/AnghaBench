
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
struct fintek_dev {int rdev; int cir_port_len; int cir_addr; int cir_irq; int fintek_lock; } ;


 int CIR_STATUS ;
 int CIR_STATUS_IRQ_MASK ;
 int fintek_cir_reg_write (struct fintek_dev*,int ,int ) ;
 int fintek_disable_cir (struct fintek_dev*) ;
 int fintek_enable_wake (struct fintek_dev*) ;
 int free_irq (int ,struct fintek_dev*) ;
 int kfree (struct fintek_dev*) ;
 struct fintek_dev* pnp_get_drvdata (struct pnp_dev*) ;
 int rc_unregister_device (int ) ;
 int release_region (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fintek_remove(struct pnp_dev *pdev)
{
 struct fintek_dev *fintek = pnp_get_drvdata(pdev);
 unsigned long flags;

 spin_lock_irqsave(&fintek->fintek_lock, flags);

 fintek_disable_cir(fintek);
 fintek_cir_reg_write(fintek, CIR_STATUS_IRQ_MASK, CIR_STATUS);

 fintek_enable_wake(fintek);
 spin_unlock_irqrestore(&fintek->fintek_lock, flags);


 free_irq(fintek->cir_irq, fintek);
 release_region(fintek->cir_addr, fintek->cir_port_len);

 rc_unregister_device(fintek->rdev);

 kfree(fintek);
}
