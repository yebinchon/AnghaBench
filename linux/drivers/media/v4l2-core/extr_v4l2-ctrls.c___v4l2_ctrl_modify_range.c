
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_5__ {scalar_t__* p_s64; scalar_t__* p_s32; } ;
struct TYPE_6__ {scalar_t__* p_s64; scalar_t__* p_s32; } ;
struct v4l2_ctrl {int type; scalar_t__ minimum; scalar_t__ maximum; scalar_t__ step; scalar_t__ default_value; TYPE_2__ p_cur; TYPE_3__ p_new; int is_array; TYPE_1__* handler; } ;
typedef scalar_t__ s64 ;
struct TYPE_4__ {int lock; } ;


 int EINVAL ;
 int V4L2_EVENT_CTRL_CH_RANGE ;
 int check_range (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int cur_to_new (struct v4l2_ctrl*) ;
 int lockdep_assert_held (int ) ;
 int send_event (int *,struct v4l2_ctrl*,int ) ;
 int set_ctrl (int *,struct v4l2_ctrl*,int ) ;
 scalar_t__ validate_new (struct v4l2_ctrl*,TYPE_3__) ;

int __v4l2_ctrl_modify_range(struct v4l2_ctrl *ctrl,
   s64 min, s64 max, u64 step, s64 def)
{
 bool value_changed;
 bool range_changed = 0;
 int ret;

 lockdep_assert_held(ctrl->handler->lock);

 switch (ctrl->type) {
 case 134:
 case 133:
 case 135:
 case 131:
 case 132:
 case 136:
 case 128:
 case 130:
 case 129:
  if (ctrl->is_array)
   return -EINVAL;
  ret = check_range(ctrl->type, min, max, step, def);
  if (ret)
   return ret;
  break;
 default:
  return -EINVAL;
 }
 if ((ctrl->minimum != min) || (ctrl->maximum != max) ||
  (ctrl->step != step) || ctrl->default_value != def) {
  range_changed = 1;
  ctrl->minimum = min;
  ctrl->maximum = max;
  ctrl->step = step;
  ctrl->default_value = def;
 }
 cur_to_new(ctrl);
 if (validate_new(ctrl, ctrl->p_new)) {
  if (ctrl->type == 133)
   *ctrl->p_new.p_s64 = def;
  else
   *ctrl->p_new.p_s32 = def;
 }

 if (ctrl->type == 133)
  value_changed = *ctrl->p_new.p_s64 != *ctrl->p_cur.p_s64;
 else
  value_changed = *ctrl->p_new.p_s32 != *ctrl->p_cur.p_s32;
 if (value_changed)
  ret = set_ctrl(((void*)0), ctrl, V4L2_EVENT_CTRL_CH_RANGE);
 else if (range_changed)
  send_event(((void*)0), ctrl, V4L2_EVENT_CTRL_CH_RANGE);
 return ret;
}
