
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct v4l2_dv_timings {int dummy; } ;
struct TYPE_3__ {int reg_value; struct v4l2_dv_timings format; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ERANGE ;
 int MASK_STD_STATUS ;
 TYPE_1__* reg_fmt ;

__attribute__((used)) static int gs_status_format(u16 status, struct v4l2_dv_timings *timings)
{
 int std = (status & MASK_STD_STATUS) >> 5;
 int i;

 for (i = 0; i < ARRAY_SIZE(reg_fmt); i++) {
  if (reg_fmt[i].reg_value == std) {
   *timings = reg_fmt[i].format;
   return 0;
  }
 }

 return -ERANGE;
}
