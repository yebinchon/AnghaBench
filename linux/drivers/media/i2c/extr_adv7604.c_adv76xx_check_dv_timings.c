
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_dv_timings {int dummy; } ;
struct TYPE_4__ {scalar_t__ width; } ;
struct TYPE_5__ {TYPE_1__ bt; } ;


 TYPE_2__* adv76xx_timings_exceptions ;
 scalar_t__ v4l2_match_dv_timings (struct v4l2_dv_timings const*,TYPE_2__*,int ,int) ;

__attribute__((used)) static bool adv76xx_check_dv_timings(const struct v4l2_dv_timings *t, void *hdl)
{
 int i;

 for (i = 0; adv76xx_timings_exceptions[i].bt.width; i++)
  if (v4l2_match_dv_timings(t, adv76xx_timings_exceptions + i, 0, 0))
   return 0;
 return 1;
}
