
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_ctrl {int dummy; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_6__ {int error; } ;
struct si476x_radio {TYPE_1__ v4l2dev; TYPE_2__ ctrl_handler; } ;
typedef enum si476x_ctrl_idx { ____Placeholder_si476x_ctrl_idx } si476x_ctrl_idx ;
struct TYPE_7__ {int name; } ;


 int dev_err (int ,char*,int ,int) ;
 TYPE_3__* si476x_ctrls ;
 struct v4l2_ctrl* v4l2_ctrl_new_custom (TYPE_2__*,TYPE_3__*,int *) ;

__attribute__((used)) static int si476x_radio_add_new_custom(struct si476x_radio *radio,
           enum si476x_ctrl_idx idx)
{
 int rval;
 struct v4l2_ctrl *ctrl;

 ctrl = v4l2_ctrl_new_custom(&radio->ctrl_handler,
        &si476x_ctrls[idx],
        ((void*)0));
 rval = radio->ctrl_handler.error;
 if (ctrl == ((void*)0) && rval)
  dev_err(radio->v4l2dev.dev,
   "Could not initialize '%s' control %d\n",
   si476x_ctrls[idx].name, rval);

 return rval;
}
