
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_queue_sp_obj {unsigned long pending; scalar_t__ next_tx_only; scalar_t__ max_cos; scalar_t__ num_tx_only; int next_state; int state; int * cids; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_queue_cmd { ____Placeholder_bnx2x_queue_cmd } bnx2x_queue_cmd ;


 int BNX2X_ERR (char*,scalar_t__,scalar_t__,...) ;
 int BNX2X_MSG_SP ;
 size_t BNX2X_PRIMARY_CID_INDEX ;
 int BNX2X_Q_STATE_MAX ;
 int DP (int ,char*,int,scalar_t__,...) ;
 int EINVAL ;
 int clear_bit (int,unsigned long*) ;
 int smp_mb__after_atomic () ;
 int test_and_clear_bit (int,unsigned long*) ;
 int wmb () ;

__attribute__((used)) static int bnx2x_queue_comp_cmd(struct bnx2x *bp,
    struct bnx2x_queue_sp_obj *o,
    enum bnx2x_queue_cmd cmd)
{
 unsigned long cur_pending = o->pending;

 if (!test_and_clear_bit(cmd, &cur_pending)) {
  BNX2X_ERR("Bad MC reply %d for queue %d in state %d pending 0x%lx, next_state %d\n",
     cmd, o->cids[BNX2X_PRIMARY_CID_INDEX],
     o->state, cur_pending, o->next_state);
  return -EINVAL;
 }

 if (o->next_tx_only >= o->max_cos)



  BNX2X_ERR("illegal value for next tx_only: %d. max cos was %d",
      o->next_tx_only, o->max_cos);

 DP(BNX2X_MSG_SP,
    "Completing command %d for queue %d, setting state to %d\n",
    cmd, o->cids[BNX2X_PRIMARY_CID_INDEX], o->next_state);

 if (o->next_tx_only)
  DP(BNX2X_MSG_SP, "primary cid %d: num tx-only cons %d\n",
     o->cids[BNX2X_PRIMARY_CID_INDEX], o->next_tx_only);

 o->state = o->next_state;
 o->num_tx_only = o->next_tx_only;
 o->next_state = BNX2X_Q_STATE_MAX;




 wmb();

 clear_bit(cmd, &o->pending);
 smp_mb__after_atomic();

 return 0;
}
