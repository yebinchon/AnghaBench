
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_queue_state_params {unsigned long ramrod_flags; struct bnx2x_queue_sp_obj* q_obj; } ;
struct bnx2x_queue_sp_obj {unsigned long pending; int (* check_transition ) (struct bnx2x*,struct bnx2x_queue_sp_obj*,struct bnx2x_queue_state_params*) ;int (* set_pending ) (struct bnx2x_queue_sp_obj*,struct bnx2x_queue_state_params*) ;int (* send_cmd ) (struct bnx2x*,struct bnx2x_queue_state_params*) ;int (* wait_comp ) (struct bnx2x*,struct bnx2x_queue_sp_obj*,int) ;int next_state; int (* complete_cmd ) (struct bnx2x*,struct bnx2x_queue_sp_obj*,int) ;} ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_MSG_SP ;
 int BNX2X_Q_STATE_MAX ;
 int DP (int ,char*,unsigned long) ;
 int EINVAL ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_DRV_CLR_ONLY ;
 int clear_bit (int,unsigned long*) ;
 int smp_mb__after_atomic () ;
 int stub1 (struct bnx2x*,struct bnx2x_queue_sp_obj*,struct bnx2x_queue_state_params*) ;
 int stub2 (struct bnx2x_queue_sp_obj*,struct bnx2x_queue_state_params*) ;
 int stub3 (struct bnx2x*,struct bnx2x_queue_sp_obj*,int) ;
 int stub4 (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int stub5 (struct bnx2x*,struct bnx2x_queue_sp_obj*,int) ;
 scalar_t__ test_bit (int,unsigned long*) ;

int bnx2x_queue_state_change(struct bnx2x *bp,
        struct bnx2x_queue_state_params *params)
{
 struct bnx2x_queue_sp_obj *o = params->q_obj;
 int rc, pending_bit;
 unsigned long *pending = &o->pending;


 rc = o->check_transition(bp, o, params);
 if (rc) {
  BNX2X_ERR("check transition returned an error. rc %d\n", rc);
  return -EINVAL;
 }


 DP(BNX2X_MSG_SP, "pending bit was=%lx\n", o->pending);
 pending_bit = o->set_pending(o, params);
 DP(BNX2X_MSG_SP, "pending bit now=%lx\n", o->pending);


 if (test_bit(RAMROD_DRV_CLR_ONLY, &params->ramrod_flags))
  o->complete_cmd(bp, o, pending_bit);
 else {

  rc = o->send_cmd(bp, params);
  if (rc) {
   o->next_state = BNX2X_Q_STATE_MAX;
   clear_bit(pending_bit, pending);
   smp_mb__after_atomic();
   return rc;
  }

  if (test_bit(RAMROD_COMP_WAIT, &params->ramrod_flags)) {
   rc = o->wait_comp(bp, o, pending_bit);
   if (rc)
    return rc;

   return 0;
  }
 }

 return !!test_bit(pending_bit, pending);
}
