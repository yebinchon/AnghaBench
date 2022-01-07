
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ath10k_ce_disable_interrupts (struct ath10k*) ;

__attribute__((used)) static inline void ath10k_snoc_irq_disable(struct ath10k *ar)
{
 ath10k_ce_disable_interrupts(ar);
}
