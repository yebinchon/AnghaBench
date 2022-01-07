
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_queue_state_params {int cmd; } ;
struct bnx2x_queue_sp_obj {int pending; } ;
typedef enum bnx2x_queue_cmd { ____Placeholder_bnx2x_queue_cmd } bnx2x_queue_cmd ;


 int BNX2X_Q_CMD_ACTIVATE ;
 int BNX2X_Q_CMD_DEACTIVATE ;
 int BNX2X_Q_CMD_UPDATE ;
 int set_bit (int,int *) ;

__attribute__((used)) static int bnx2x_queue_set_pending(struct bnx2x_queue_sp_obj *obj,
       struct bnx2x_queue_state_params *params)
{
 enum bnx2x_queue_cmd cmd = params->cmd, bit;




 if ((cmd == BNX2X_Q_CMD_ACTIVATE) ||
     (cmd == BNX2X_Q_CMD_DEACTIVATE))
  bit = BNX2X_Q_CMD_UPDATE;
 else
  bit = cmd;

 set_bit(bit, &obj->pending);
 return bit;
}
