
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_enum_dv_timings {int pad; } ;
struct rvin_dev {TYPE_1__* parallel; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int sink_pad; } ;


 int EINVAL ;
 int enum_dv_timings ;
 int pad ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_enum_dv_timings*) ;
 struct rvin_dev* video_drvdata (struct file*) ;
 struct v4l2_subdev* vin_to_source (struct rvin_dev*) ;

__attribute__((used)) static int rvin_enum_dv_timings(struct file *file, void *priv_fh,
    struct v4l2_enum_dv_timings *timings)
{
 struct rvin_dev *vin = video_drvdata(file);
 struct v4l2_subdev *sd = vin_to_source(vin);
 int ret;

 if (timings->pad)
  return -EINVAL;

 timings->pad = vin->parallel->sink_pad;

 ret = v4l2_subdev_call(sd, pad, enum_dv_timings, timings);

 timings->pad = 0;

 return ret;
}
