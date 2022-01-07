
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * v4l2_ctrl_notify_fnc ;
struct v4l2_ctrl {int call_notify; TYPE_1__* handler; } ;
struct TYPE_2__ {void* notify_priv; int * notify; } ;


 scalar_t__ WARN_ON (int ) ;

void v4l2_ctrl_notify(struct v4l2_ctrl *ctrl, v4l2_ctrl_notify_fnc notify, void *priv)
{
 if (ctrl == ((void*)0))
  return;
 if (notify == ((void*)0)) {
  ctrl->call_notify = 0;
  return;
 }
 if (WARN_ON(ctrl->handler->notify && ctrl->handler->notify != notify))
  return;
 ctrl->handler->notify = notify;
 ctrl->handler->notify_priv = priv;
 ctrl->call_notify = 1;
}
