
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7180_state {int ctrl_hdl; } ;


 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static void adv7180_exit_controls(struct adv7180_state *state)
{
 v4l2_ctrl_handler_free(&state->ctrl_hdl);
}
