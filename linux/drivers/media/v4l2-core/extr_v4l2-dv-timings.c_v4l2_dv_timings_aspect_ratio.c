
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_fract {int member_0; int member_1; int numerator; int denominator; } ;
struct TYPE_3__ {int denominator; int numerator; } ;
struct TYPE_4__ {int flags; int width; int height; TYPE_1__ picture_aspect; } ;
struct v4l2_dv_timings {scalar_t__ type; TYPE_2__ bt; } ;


 scalar_t__ V4L2_DV_BT_656_1120 ;
 int V4L2_DV_FL_HAS_PICTURE_ASPECT ;
 int rational_best_approximation (int,int,int,int,unsigned long*,unsigned long*) ;

struct v4l2_fract v4l2_dv_timings_aspect_ratio(const struct v4l2_dv_timings *t)
{
 struct v4l2_fract ratio = { 1, 1 };
 unsigned long n, d;

 if (t->type != V4L2_DV_BT_656_1120)
  return ratio;
 if (!(t->bt.flags & V4L2_DV_FL_HAS_PICTURE_ASPECT))
  return ratio;

 ratio.numerator = t->bt.width * t->bt.picture_aspect.denominator;
 ratio.denominator = t->bt.height * t->bt.picture_aspect.numerator;

 rational_best_approximation(ratio.numerator, ratio.denominator,
        ratio.numerator, ratio.denominator, &n, &d);
 ratio.numerator = n;
 ratio.denominator = d;
 return ratio;
}
