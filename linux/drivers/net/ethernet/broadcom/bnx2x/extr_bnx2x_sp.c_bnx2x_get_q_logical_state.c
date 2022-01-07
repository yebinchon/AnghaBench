
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_queue_sp_obj {int state; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_Q_LOGICAL_STATE_ACTIVE ;
 int BNX2X_Q_LOGICAL_STATE_STOPPED ;
 int EINVAL ;

int bnx2x_get_q_logical_state(struct bnx2x *bp,
          struct bnx2x_queue_sp_obj *obj)
{
 switch (obj->state) {
 case 136:
 case 131:
  return BNX2X_Q_LOGICAL_STATE_ACTIVE;
 case 130:
 case 133:
 case 132:
 case 134:
 case 129:
 case 128:
 case 135:
  return BNX2X_Q_LOGICAL_STATE_STOPPED;
 default:
  return -EINVAL;
 }
}
