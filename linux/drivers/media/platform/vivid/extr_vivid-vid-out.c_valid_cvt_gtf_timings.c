
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_bt_timings {int standards; } ;
struct v4l2_dv_timings {struct v4l2_bt_timings bt; } ;


 int V4L2_DV_BT_STD_CVT ;
 int V4L2_DV_BT_STD_GTF ;
 scalar_t__ v4l2_valid_dv_timings (struct v4l2_dv_timings*,int *,int *,int *) ;
 int vivid_dv_timings_cap ;

__attribute__((used)) static bool valid_cvt_gtf_timings(struct v4l2_dv_timings *timings)
{
 struct v4l2_bt_timings *bt = &timings->bt;

 if ((bt->standards & (V4L2_DV_BT_STD_CVT | V4L2_DV_BT_STD_GTF)) &&
     v4l2_valid_dv_timings(timings, &vivid_dv_timings_cap, ((void*)0), ((void*)0)))
  return 1;

 return 0;
}
