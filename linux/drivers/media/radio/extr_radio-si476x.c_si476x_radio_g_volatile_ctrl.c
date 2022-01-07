
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {int id; int val; int handler; } ;
struct si476x_radio {int core; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* phase_div_status ) (int ) ;int phase_diversity; } ;


 int EINVAL ;
 int ENOTTY ;
 int SI476X_PHDIV_STATUS_LINK_LOCKED (int) ;

 int si476x_core_has_diversity (int ) ;
 int si476x_core_lock (int ) ;
 int si476x_core_unlock (int ) ;
 int stub1 (int ) ;
 struct si476x_radio* v4l2_ctrl_handler_to_radio (int ) ;

__attribute__((used)) static int si476x_radio_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
{
 int retval;
 struct si476x_radio *radio = v4l2_ctrl_handler_to_radio(ctrl->handler);

 si476x_core_lock(radio->core);

 switch (ctrl->id) {
 case 128:
  if (si476x_core_has_diversity(radio->core)) {
   if (radio->ops->phase_diversity) {
    retval = radio->ops->phase_div_status(radio->core);
    if (retval < 0)
     break;

    ctrl->val = !!SI476X_PHDIV_STATUS_LINK_LOCKED(retval);
    retval = 0;
    break;
   } else {
    retval = -ENOTTY;
    break;
   }
  }
  retval = -EINVAL;
  break;
 default:
  retval = -EINVAL;
  break;
 }
 si476x_core_unlock(radio->core);
 return retval;

}
