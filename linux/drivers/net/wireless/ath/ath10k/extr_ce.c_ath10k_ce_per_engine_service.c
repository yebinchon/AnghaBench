
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_hw_ce_host_wm_regs {int wm_mask; int cc_mask; } ;
struct ath10k_ce_pipe {int (* send_cb ) (struct ath10k_ce_pipe*) ;int (* recv_cb ) (struct ath10k_ce_pipe*) ;int ctrl_addr; } ;
struct ath10k_ce {int ce_lock; struct ath10k_ce_pipe* ce_states; } ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_2__ {struct ath10k_hw_ce_host_wm_regs* wm_regs; } ;


 int ath10k_ce_engine_int_status_clear (struct ath10k*,int ,int ) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ath10k_ce_pipe*) ;
 int stub2 (struct ath10k_ce_pipe*) ;

void ath10k_ce_per_engine_service(struct ath10k *ar, unsigned int ce_id)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_ce_pipe *ce_state = &ce->ce_states[ce_id];
 struct ath10k_hw_ce_host_wm_regs *wm_regs = ar->hw_ce_regs->wm_regs;
 u32 ctrl_addr = ce_state->ctrl_addr;

 spin_lock_bh(&ce->ce_lock);


 ath10k_ce_engine_int_status_clear(ar, ctrl_addr,
       wm_regs->cc_mask);

 spin_unlock_bh(&ce->ce_lock);

 if (ce_state->recv_cb)
  ce_state->recv_cb(ce_state);

 if (ce_state->send_cb)
  ce_state->send_cb(ce_state);

 spin_lock_bh(&ce->ce_lock);





 ath10k_ce_engine_int_status_clear(ar, ctrl_addr, wm_regs->wm_mask);

 spin_unlock_bh(&ce->ce_lock);
}
