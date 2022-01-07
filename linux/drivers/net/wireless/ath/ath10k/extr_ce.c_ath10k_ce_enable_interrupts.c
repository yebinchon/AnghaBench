
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ce_pipe {int attr_flags; } ;
struct ath10k_ce {struct ath10k_ce_pipe* ce_states; } ;
struct ath10k {int dummy; } ;


 int CE_ATTR_POLL ;
 int CE_COUNT ;
 int ath10k_ce_per_engine_handler_adjust (struct ath10k_ce_pipe*) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;

void ath10k_ce_enable_interrupts(struct ath10k *ar)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 int ce_id;
 struct ath10k_ce_pipe *ce_state;




 for (ce_id = 0; ce_id < CE_COUNT; ce_id++) {
  ce_state = &ce->ce_states[ce_id];
  if (ce_state->attr_flags & CE_ATTR_POLL)
   continue;

  ath10k_ce_per_engine_handler_adjust(ce_state);
 }
}
