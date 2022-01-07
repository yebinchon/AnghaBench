
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_ce_pipe {TYPE_1__* ops; } ;
struct ath10k_ce {struct ath10k_ce_pipe* ce_states; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int (* ce_free_pipe ) (struct ath10k*,int) ;} ;


 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int stub1 (struct ath10k*,int) ;

void ath10k_ce_free_pipe(struct ath10k *ar, int ce_id)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_ce_pipe *ce_state = &ce->ce_states[ce_id];

 ce_state->ops->ce_free_pipe(ar, ce_id);
}
