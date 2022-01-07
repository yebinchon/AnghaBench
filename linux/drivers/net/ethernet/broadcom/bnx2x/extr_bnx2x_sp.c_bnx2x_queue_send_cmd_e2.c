
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_queue_state_params {int cmd; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;
 int EINVAL ;
 int bnx2x_q_send_setup_e2 (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int bnx2x_queue_send_cmd_cmn (struct bnx2x*,struct bnx2x_queue_state_params*) ;

__attribute__((used)) static int bnx2x_queue_send_cmd_e2(struct bnx2x *bp,
       struct bnx2x_queue_state_params *params)
{
 switch (params->cmd) {
 case 132:
  return bnx2x_q_send_setup_e2(bp, params);
 case 133:
 case 131:
 case 136:
 case 138:
 case 129:
 case 128:
 case 134:
 case 137:
 case 130:
 case 135:
  return bnx2x_queue_send_cmd_cmn(bp, params);
 default:
  BNX2X_ERR("Unknown command: %d\n", params->cmd);
  return -EINVAL;
 }
}
