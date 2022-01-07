
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings {int dummy; } ;


 int adv748x_hdmi_timings_cap ;
 int v4l2_find_dv_timings_cap (struct v4l2_dv_timings*,int *,int,int *,int *) ;

__attribute__((used)) static void adv748x_fill_optional_dv_timings(struct v4l2_dv_timings *timings)
{
 v4l2_find_dv_timings_cap(timings, &adv748x_hdmi_timings_cap,
     250000, ((void*)0), ((void*)0));
}
