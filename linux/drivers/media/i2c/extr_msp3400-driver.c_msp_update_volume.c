
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct msp_state {TYPE_4__* volume; TYPE_3__* muted; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_10__ {TYPE_1__ cur; int val; } ;
struct TYPE_8__ {int val; } ;
struct TYPE_9__ {TYPE_2__ cur; int val; } ;


 int msp_s_ctrl (TYPE_4__*) ;
 int v4l2_ctrl_lock (TYPE_4__*) ;
 int v4l2_ctrl_unlock (TYPE_4__*) ;

void msp_update_volume(struct msp_state *state)
{

 v4l2_ctrl_lock(state->volume);
 state->volume->val = state->volume->cur.val;
 state->muted->val = state->muted->cur.val;
 msp_s_ctrl(state->volume);
 v4l2_ctrl_unlock(state->volume);
}
