
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_bt_timings {int dummy; } ;


 int V4L2_DV_BT_FRAME_HEIGHT (struct v4l2_bt_timings const*) ;

__attribute__((used)) static inline unsigned vtotal(const struct v4l2_bt_timings *t)
{
 return V4L2_DV_BT_FRAME_HEIGHT(t);
}
