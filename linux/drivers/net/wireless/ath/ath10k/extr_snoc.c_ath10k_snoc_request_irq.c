
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_snoc {TYPE_1__* ce_irqs; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int irq_line; } ;


 int CE_COUNT_MAX ;
 int IRQF_TRIGGER_RISING ;
 int ath10k_err (struct ath10k*,char*,int,int) ;
 int ath10k_snoc_per_engine_handler ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int * ce_name ;
 int free_irq (int ,struct ath10k*) ;
 int request_irq (int ,int ,int,int ,struct ath10k*) ;

__attribute__((used)) static int ath10k_snoc_request_irq(struct ath10k *ar)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 int irqflags = IRQF_TRIGGER_RISING;
 int ret, id;

 for (id = 0; id < CE_COUNT_MAX; id++) {
  ret = request_irq(ar_snoc->ce_irqs[id].irq_line,
      ath10k_snoc_per_engine_handler,
      irqflags, ce_name[id], ar);
  if (ret) {
   ath10k_err(ar,
       "failed to register IRQ handler for CE %d: %d",
       id, ret);
   goto err_irq;
  }
 }

 return 0;

err_irq:
 for (id -= 1; id >= 0; id--)
  free_irq(ar_snoc->ce_irqs[id].irq_line, ar);

 return ret;
}
