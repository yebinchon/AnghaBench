
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ahb {int irq; } ;
struct ath10k {int dummy; } ;


 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;
 int free_irq (int ,struct ath10k*) ;

__attribute__((used)) static void ath10k_ahb_release_irq_legacy(struct ath10k *ar)
{
 struct ath10k_ahb *ar_ahb = ath10k_ahb_priv(ar);

 free_irq(ar_ahb->irq, ar);
}
