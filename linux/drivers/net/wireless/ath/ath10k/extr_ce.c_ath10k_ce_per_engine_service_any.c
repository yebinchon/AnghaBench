
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int CE_COUNT ;
 int ath10k_ce_interrupt_summary (struct ath10k*) ;
 int ath10k_ce_per_engine_service (struct ath10k*,int) ;

void ath10k_ce_per_engine_service_any(struct ath10k *ar)
{
 int ce_id;
 u32 intr_summary;

 intr_summary = ath10k_ce_interrupt_summary(ar);

 for (ce_id = 0; intr_summary && (ce_id < CE_COUNT); ce_id++) {
  if (intr_summary & (1 << ce_id))
   intr_summary &= ~(1 << ce_id);
  else

   continue;

  ath10k_ce_per_engine_service(ar, ce_id);
 }
}
