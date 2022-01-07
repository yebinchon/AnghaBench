
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;
typedef enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;


 int EINVAL ;
 int ERANGE ;
__attribute__((used)) static int check_range(enum v4l2_ctrl_type type,
  s64 min, s64 max, u64 step, s64 def)
{
 switch (type) {
 case 136:
  if (step != 1 || max > 1 || min < 0)
   return -ERANGE;

 case 128:
 case 130:
 case 129:
 case 135:
 case 134:
  if (step == 0 || min > max || def < min || def > max)
   return -ERANGE;
  return 0;
 case 137:
  if (step || min || !max || (def & ~max))
   return -ERANGE;
  return 0;
 case 132:
 case 133:
  if (min > max || def < min || def > max)
   return -ERANGE;


  if (step && ((1 << def) & step))
   return -EINVAL;
  return 0;
 case 131:
  if (min > max || min < 0 || step < 1 || def)
   return -ERANGE;
  return 0;
 default:
  return 0;
 }
}
