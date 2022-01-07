
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings_cap {int pad; } ;
struct rvin_dev {TYPE_1__* parallel; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int sink_pad; } ;


 int EINVAL ;
 int dv_timings_cap ;
 int pad ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_dv_timings_cap*) ;
 struct rvin_dev* video_drvdata (struct file*) ;
 struct v4l2_subdev* vin_to_source (struct rvin_dev*) ;

__attribute__((used)) static int rvin_dv_timings_cap(struct file *file, void *priv_fh,
          struct v4l2_dv_timings_cap *cap)
{
 struct rvin_dev *vin = video_drvdata(file);
 struct v4l2_subdev *sd = vin_to_source(vin);
 int ret;

 if (cap->pad)
  return -EINVAL;

 cap->pad = vin->parallel->sink_pad;

 ret = v4l2_subdev_call(sd, pad, dv_timings_cap, cap);

 cap->pad = 0;

 return ret;
}
