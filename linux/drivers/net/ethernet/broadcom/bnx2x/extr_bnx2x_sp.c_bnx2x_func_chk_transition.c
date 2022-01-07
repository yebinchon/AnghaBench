
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_func_state_params {int cmd; scalar_t__ ramrod_flags; } ;
struct bnx2x_func_sp_obj {int state; int next_state; scalar_t__ pending; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_func_state { ____Placeholder_bnx2x_func_state } bnx2x_func_state ;
typedef enum bnx2x_func_cmd { ____Placeholder_bnx2x_func_cmd } bnx2x_func_cmd ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_F_CMD_AFEX_UPDATE ;
 int BNX2X_F_CMD_AFEX_VIFLISTS ;
 int BNX2X_F_CMD_HW_INIT ;
 int BNX2X_F_CMD_HW_RESET ;
 int BNX2X_F_CMD_SET_TIMESYNC ;
 int BNX2X_F_CMD_START ;
 int BNX2X_F_CMD_STOP ;
 int BNX2X_F_CMD_SWITCH_UPDATE ;
 int BNX2X_F_CMD_TX_START ;
 int BNX2X_F_CMD_TX_STOP ;

 int BNX2X_F_STATE_MAX ;



 int BNX2X_MSG_SP ;
 int DP (int ,char*,int,int,...) ;
 int EBUSY ;
 int EINVAL ;
 int RAMROD_DRV_CLR_ONLY ;
 scalar_t__ test_bit (int,scalar_t__*) ;

__attribute__((used)) static int bnx2x_func_chk_transition(struct bnx2x *bp,
         struct bnx2x_func_sp_obj *o,
         struct bnx2x_func_state_params *params)
{
 enum bnx2x_func_state state = o->state, next_state = BNX2X_F_STATE_MAX;
 enum bnx2x_func_cmd cmd = params->cmd;




 if (test_bit(RAMROD_DRV_CLR_ONLY, &params->ramrod_flags)) {
  o->pending = 0;
  o->next_state = BNX2X_F_STATE_MAX;
 }




 if (o->pending)
  return -EBUSY;

 switch (state) {
 case 130:
  if (cmd == BNX2X_F_CMD_HW_INIT)
   next_state = 131;

  break;
 case 131:
  if (cmd == BNX2X_F_CMD_START)
   next_state = 129;

  else if (cmd == BNX2X_F_CMD_HW_RESET)
   next_state = 130;

  break;
 case 129:
  if (cmd == BNX2X_F_CMD_STOP)
   next_state = 131;




  else if ((cmd == BNX2X_F_CMD_AFEX_UPDATE) &&
    (!test_bit(BNX2X_F_CMD_STOP, &o->pending)))
   next_state = 129;

  else if ((cmd == BNX2X_F_CMD_AFEX_VIFLISTS) &&
    (!test_bit(BNX2X_F_CMD_STOP, &o->pending)))
   next_state = 129;




  else if ((cmd == BNX2X_F_CMD_SWITCH_UPDATE) &&
    (!test_bit(BNX2X_F_CMD_STOP, &o->pending)))
   next_state = 129;

  else if ((cmd == BNX2X_F_CMD_SET_TIMESYNC) &&
    (!test_bit(BNX2X_F_CMD_STOP, &o->pending)))
   next_state = 129;

  else if (cmd == BNX2X_F_CMD_TX_STOP)
   next_state = 128;

  break;
 case 128:
  if ((cmd == BNX2X_F_CMD_SWITCH_UPDATE) &&
      (!test_bit(BNX2X_F_CMD_STOP, &o->pending)))
   next_state = 128;

  else if ((cmd == BNX2X_F_CMD_SET_TIMESYNC) &&
    (!test_bit(BNX2X_F_CMD_STOP, &o->pending)))
   next_state = 128;

  else if (cmd == BNX2X_F_CMD_TX_START)
   next_state = 129;

  break;
 default:
  BNX2X_ERR("Unknown state: %d\n", state);
 }


 if (next_state != BNX2X_F_STATE_MAX) {
  DP(BNX2X_MSG_SP, "Good function state transition: %d(%d)->%d\n",
     state, cmd, next_state);
  o->next_state = next_state;
  return 0;
 }

 DP(BNX2X_MSG_SP, "Bad function state transition request: %d %d\n",
    state, cmd);

 return -EINVAL;
}
