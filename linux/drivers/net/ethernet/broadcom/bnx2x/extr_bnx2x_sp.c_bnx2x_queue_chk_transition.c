
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct bnx2x_queue_update_params {int update_flags; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ setup; struct bnx2x_queue_update_params update; } ;
struct bnx2x_queue_state_params {int cmd; TYPE_2__ params; int ramrod_flags; } ;
struct bnx2x_queue_sp_obj {int state; int num_tx_only; int pending; int next_state; int next_tx_only; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_queue_cmd { ____Placeholder_bnx2x_queue_cmd } bnx2x_queue_cmd ;
typedef enum bnx2x_q_state { ____Placeholder_bnx2x_q_state } bnx2x_q_state ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_MSG_SP ;
 int BNX2X_Q_CMD_ACTIVATE ;
 int BNX2X_Q_CMD_CFC_DEL ;
 int BNX2X_Q_CMD_DEACTIVATE ;
 int BNX2X_Q_CMD_EMPTY ;
 int BNX2X_Q_CMD_HALT ;
 int BNX2X_Q_CMD_INIT ;
 int BNX2X_Q_CMD_SETUP ;
 int BNX2X_Q_CMD_SETUP_TX_ONLY ;
 int BNX2X_Q_CMD_TERMINATE ;
 int BNX2X_Q_CMD_UPDATE ;
 int BNX2X_Q_CMD_UPDATE_TPA ;
 int BNX2X_Q_FLG_ACTIVE ;



 int BNX2X_Q_STATE_MAX ;





 int BNX2X_Q_UPDATE_ACTIVATE ;
 int BNX2X_Q_UPDATE_ACTIVATE_CHNG ;
 int DP (int ,char*,int,int,...) ;
 int EBUSY ;
 int EINVAL ;
 int RAMROD_DRV_CLR_ONLY ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnx2x_queue_chk_transition(struct bnx2x *bp,
          struct bnx2x_queue_sp_obj *o,
          struct bnx2x_queue_state_params *params)
{
 enum bnx2x_q_state state = o->state, next_state = BNX2X_Q_STATE_MAX;
 enum bnx2x_queue_cmd cmd = params->cmd;
 struct bnx2x_queue_update_params *update_params =
   &params->params.update;
 u8 next_tx_only = o->num_tx_only;




 if (test_bit(RAMROD_DRV_CLR_ONLY, &params->ramrod_flags)) {
  o->pending = 0;
  o->next_state = BNX2X_Q_STATE_MAX;
 }




 if (o->pending) {
  BNX2X_ERR("Blocking transition since pending was %lx\n",
     o->pending);
  return -EBUSY;
 }

 switch (state) {
 case 130:
  if (cmd == BNX2X_Q_CMD_INIT)
   next_state = 133;

  break;
 case 133:
  if (cmd == BNX2X_Q_CMD_SETUP) {
   if (test_bit(BNX2X_Q_FLG_ACTIVE,
         &params->params.setup.flags))
    next_state = 135;
   else
    next_state = 134;
  }

  break;
 case 135:
  if (cmd == BNX2X_Q_CMD_DEACTIVATE)
   next_state = 134;

  else if ((cmd == BNX2X_Q_CMD_EMPTY) ||
    (cmd == BNX2X_Q_CMD_UPDATE_TPA))
   next_state = 135;

  else if (cmd == BNX2X_Q_CMD_SETUP_TX_ONLY) {
   next_state = 131;
   next_tx_only = 1;
  }

  else if (cmd == BNX2X_Q_CMD_HALT)
   next_state = 129;

  else if (cmd == BNX2X_Q_CMD_UPDATE) {



   if (test_bit(BNX2X_Q_UPDATE_ACTIVATE_CHNG,
         &update_params->update_flags) &&
       !test_bit(BNX2X_Q_UPDATE_ACTIVATE,
          &update_params->update_flags))
    next_state = 134;
   else
    next_state = 135;
  }

  break;
 case 131:
  if (cmd == BNX2X_Q_CMD_TERMINATE)
   next_state = 132;

  else if (cmd == BNX2X_Q_CMD_SETUP_TX_ONLY) {
   next_state = 131;
   next_tx_only = o->num_tx_only + 1;
  }

  else if ((cmd == BNX2X_Q_CMD_EMPTY) ||
    (cmd == BNX2X_Q_CMD_UPDATE_TPA))
   next_state = 131;

  else if (cmd == BNX2X_Q_CMD_UPDATE) {



   if (test_bit(BNX2X_Q_UPDATE_ACTIVATE_CHNG,
         &update_params->update_flags) &&
       !test_bit(BNX2X_Q_UPDATE_ACTIVATE,
          &update_params->update_flags))
    next_state = 134;
   else
    next_state = 131;
  }

  break;
 case 132:
  if (cmd == BNX2X_Q_CMD_CFC_DEL) {
   next_tx_only = o->num_tx_only - 1;
   if (next_tx_only == 0)
    next_state = 135;
   else
    next_state = 131;
  }

  break;
 case 134:
  if (cmd == BNX2X_Q_CMD_ACTIVATE)
   next_state = 135;

  else if ((cmd == BNX2X_Q_CMD_EMPTY) ||
    (cmd == BNX2X_Q_CMD_UPDATE_TPA))
   next_state = 134;

  else if (cmd == BNX2X_Q_CMD_HALT)
   next_state = 129;

  else if (cmd == BNX2X_Q_CMD_UPDATE) {



   if (test_bit(BNX2X_Q_UPDATE_ACTIVATE_CHNG,
         &update_params->update_flags) &&
       test_bit(BNX2X_Q_UPDATE_ACTIVATE,
         &update_params->update_flags)){
    if (o->num_tx_only == 0)
     next_state = 135;
    else
     next_state = 131;
   } else
    next_state = 134;
  }

  break;
 case 129:
  if (cmd == BNX2X_Q_CMD_TERMINATE)
   next_state = 128;

  break;
 case 128:
  if (cmd == BNX2X_Q_CMD_CFC_DEL)
   next_state = 130;

  break;
 default:
  BNX2X_ERR("Illegal state: %d\n", state);
 }


 if (next_state != BNX2X_Q_STATE_MAX) {
  DP(BNX2X_MSG_SP, "Good state transition: %d(%d)->%d\n",
     state, cmd, next_state);
  o->next_state = next_state;
  o->next_tx_only = next_tx_only;
  return 0;
 }

 DP(BNX2X_MSG_SP, "Bad state transition request: %d %d\n", state, cmd);

 return -EINVAL;
}
