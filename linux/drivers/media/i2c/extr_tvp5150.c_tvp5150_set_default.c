
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_rect {int height; int width; scalar_t__ left; scalar_t__ top; } ;


 int TVP5150_H_MAX ;
 int TVP5150_V_MAX_525_60 ;
 int TVP5150_V_MAX_OTHERS ;
 int V4L2_STD_525_60 ;

__attribute__((used)) static void tvp5150_set_default(v4l2_std_id std, struct v4l2_rect *crop)
{

 crop->top = 0;
 crop->left = 0;
 crop->width = TVP5150_H_MAX;
 if (std & V4L2_STD_525_60)
  crop->height = TVP5150_V_MAX_525_60;
 else
  crop->height = TVP5150_V_MAX_OTHERS;
}
