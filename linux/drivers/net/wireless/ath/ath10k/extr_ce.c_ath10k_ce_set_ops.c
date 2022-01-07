
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ce_pipe {int * ops; } ;
struct ath10k {int hw_rev; } ;



 int ce_64_ops ;
 int ce_ops ;

__attribute__((used)) static void ath10k_ce_set_ops(struct ath10k *ar,
         struct ath10k_ce_pipe *ce_state)
{
 switch (ar->hw_rev) {
 case 128:
  ce_state->ops = &ce_64_ops;
  break;
 default:
  ce_state->ops = &ce_ops;
  break;
 }
}
