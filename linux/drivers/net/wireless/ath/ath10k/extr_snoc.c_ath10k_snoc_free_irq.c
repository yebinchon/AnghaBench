
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_snoc {TYPE_1__* ce_irqs; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int irq_line; } ;


 int CE_COUNT_MAX ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int free_irq (int ,struct ath10k*) ;

__attribute__((used)) static void ath10k_snoc_free_irq(struct ath10k *ar)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 int id;

 for (id = 0; id < CE_COUNT_MAX; id++)
  free_irq(ar_snoc->ce_irqs[id].irq_line, ar);
}
