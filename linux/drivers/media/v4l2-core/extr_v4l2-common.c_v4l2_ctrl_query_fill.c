
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct v4l2_queryctrl {int name; scalar_t__* reserved; void* default_value; void* step; void* maximum; void* minimum; int flags; int type; int id; } ;
typedef void* s64 ;
typedef void* s32 ;


 int EINVAL ;
 int strscpy (int ,char const*,int) ;
 int v4l2_ctrl_fill (int ,char const**,int *,void**,void**,void**,void**,int *) ;

int v4l2_ctrl_query_fill(struct v4l2_queryctrl *qctrl, s32 _min, s32 _max, s32 _step, s32 _def)
{
 const char *name;
 s64 min = _min;
 s64 max = _max;
 u64 step = _step;
 s64 def = _def;

 v4l2_ctrl_fill(qctrl->id, &name, &qctrl->type,
         &min, &max, &step, &def, &qctrl->flags);

 if (name == ((void*)0))
  return -EINVAL;

 qctrl->minimum = min;
 qctrl->maximum = max;
 qctrl->step = step;
 qctrl->default_value = def;
 qctrl->reserved[0] = qctrl->reserved[1] = 0;
 strscpy(qctrl->name, name, sizeof(qctrl->name));
 return 0;
}
