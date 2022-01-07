
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int dummy; } ;
struct cx18 {int dummy; } ;


 int input_change (struct cx18*) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_s_frequency(struct v4l2_subdev *sd,
          const struct v4l2_frequency *freq)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);
 input_change(cx);
 return 0;
}
