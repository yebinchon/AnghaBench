
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_queue_update_params {int update_flags; } ;
struct TYPE_2__ {struct bnx2x_queue_update_params update; } ;
struct bnx2x_queue_state_params {TYPE_1__ params; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_Q_UPDATE_ACTIVATE ;
 int BNX2X_Q_UPDATE_ACTIVATE_CHNG ;
 int __set_bit (int ,int *) ;
 int bnx2x_q_send_update (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int memset (struct bnx2x_queue_update_params*,int ,int) ;

__attribute__((used)) static inline int bnx2x_q_send_activate(struct bnx2x *bp,
     struct bnx2x_queue_state_params *params)
{
 struct bnx2x_queue_update_params *update = &params->params.update;

 memset(update, 0, sizeof(*update));

 __set_bit(BNX2X_Q_UPDATE_ACTIVATE, &update->update_flags);
 __set_bit(BNX2X_Q_UPDATE_ACTIVATE_CHNG, &update->update_flags);

 return bnx2x_q_send_update(bp, params);
}
