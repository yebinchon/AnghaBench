
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct si476x_radio {TYPE_2__* core; } ;
typedef enum si476x_func { ____Placeholder_si476x_func } si476x_func ;
struct TYPE_4__ {int func; } ;
struct TYPE_5__ {TYPE_1__ power_up_parameters; } ;


 int SI476X_FUNC_AM_RECEIVER ;
 int SI476X_FUNC_FM_RECEIVER ;
 int si476x_core_start (TYPE_2__*,int) ;
 int si476x_core_stop (TYPE_2__*,int) ;
 int si476x_radio_do_post_powerup_init (struct si476x_radio*,int) ;

__attribute__((used)) static int si476x_radio_change_func(struct si476x_radio *radio,
        enum si476x_func func)
{
 int err;
 bool soft;





 if (func == radio->core->power_up_parameters.func)
  return 0;

 soft = 1;
 err = si476x_core_stop(radio->core, soft);
 if (err < 0) {




  soft = 0;
  err = si476x_core_stop(radio->core, soft);
  if (err < 0)
   return err;
 }



 radio->core->power_up_parameters.func = func;

 err = si476x_core_start(radio->core, soft);
 if (err < 0)
  return err;





 if (func != SI476X_FUNC_FM_RECEIVER &&
     func != SI476X_FUNC_AM_RECEIVER)
  return err;

 return si476x_radio_do_post_powerup_init(radio, func);
}
