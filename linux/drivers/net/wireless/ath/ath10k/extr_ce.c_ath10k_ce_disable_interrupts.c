
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_ce_pipe {int attr_flags; } ;
struct ath10k_ce {struct ath10k_ce_pipe* ce_states; } ;
struct ath10k {int dummy; } ;


 int CE_ATTR_POLL ;
 int CE_COUNT ;
 int ath10k_ce_base_address (struct ath10k*,int) ;
 int ath10k_ce_copy_complete_intr_disable (struct ath10k*,int ) ;
 int ath10k_ce_error_intr_disable (struct ath10k*,int ) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int ath10k_ce_watermark_intr_disable (struct ath10k*,int ) ;

int ath10k_ce_disable_interrupts(struct ath10k *ar)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_ce_pipe *ce_state;
 u32 ctrl_addr;
 int ce_id;

 for (ce_id = 0; ce_id < CE_COUNT; ce_id++) {
  ce_state = &ce->ce_states[ce_id];
  if (ce_state->attr_flags & CE_ATTR_POLL)
   continue;

  ctrl_addr = ath10k_ce_base_address(ar, ce_id);

  ath10k_ce_copy_complete_intr_disable(ar, ctrl_addr);
  ath10k_ce_error_intr_disable(ar, ctrl_addr);
  ath10k_ce_watermark_intr_disable(ar, ctrl_addr);
 }

 return 0;
}
