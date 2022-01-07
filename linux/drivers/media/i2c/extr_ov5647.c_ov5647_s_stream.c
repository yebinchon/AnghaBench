
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int ov5647_stream_off (struct v4l2_subdev*) ;
 int ov5647_stream_on (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5647_s_stream(struct v4l2_subdev *sd, int enable)
{
 if (enable)
  return ov5647_stream_on(sd);
 else
  return ov5647_stream_off(sd);
}
