
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings_cap {int dummy; } ;
struct file {int dummy; } ;


 struct v4l2_dv_timings_cap aspeed_video_timings_cap ;

__attribute__((used)) static int aspeed_video_dv_timings_cap(struct file *file, void *fh,
           struct v4l2_dv_timings_cap *cap)
{
 *cap = aspeed_video_timings_cap;

 return 0;
}
