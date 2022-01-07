
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct v4l2_dv_timings {int dummy; } ;
struct TYPE_3__ {int reg_value; int format; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int MASK_FORCE_STD ;
 TYPE_1__* reg_fmt ;
 scalar_t__ v4l2_match_dv_timings (struct v4l2_dv_timings*,int *,int ,int) ;

__attribute__((used)) static u16 get_register_timings(struct v4l2_dv_timings *timings)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(reg_fmt); i++) {
  if (v4l2_match_dv_timings(timings, &reg_fmt[i].format, 0,
       0))
   return reg_fmt[i].reg_value | MASK_FORCE_STD;
 }

 return 0x0;
}
