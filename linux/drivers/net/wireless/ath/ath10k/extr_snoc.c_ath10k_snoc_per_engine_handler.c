
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_snoc {int pipe_info; } ;
struct ath10k {int napi; } ;
typedef int irqreturn_t ;


 int ARRAY_SIZE (int ) ;
 int IRQ_HANDLED ;
 int ath10k_snoc_get_ce_id_from_irq (struct ath10k*,int) ;
 int ath10k_snoc_irq_disable (struct ath10k*) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int,int) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t ath10k_snoc_per_engine_handler(int irq, void *arg)
{
 struct ath10k *ar = arg;
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 int ce_id = ath10k_snoc_get_ce_id_from_irq(ar, irq);

 if (ce_id < 0 || ce_id >= ARRAY_SIZE(ar_snoc->pipe_info)) {
  ath10k_warn(ar, "unexpected/invalid irq %d ce_id %d\n", irq,
       ce_id);
  return IRQ_HANDLED;
 }

 ath10k_snoc_irq_disable(ar);
 napi_schedule(&ar->napi);

 return IRQ_HANDLED;
}
