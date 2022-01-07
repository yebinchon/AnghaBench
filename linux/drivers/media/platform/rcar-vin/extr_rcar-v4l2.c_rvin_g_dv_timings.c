
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct rvin_dev {int dummy; } ;
struct file {int dummy; } ;


 int g_dv_timings ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_dv_timings*) ;
 int video ;
 struct rvin_dev* video_drvdata (struct file*) ;
 struct v4l2_subdev* vin_to_source (struct rvin_dev*) ;

__attribute__((used)) static int rvin_g_dv_timings(struct file *file, void *priv_fh,
        struct v4l2_dv_timings *timings)
{
 struct rvin_dev *vin = video_drvdata(file);
 struct v4l2_subdev *sd = vin_to_source(vin);

 return v4l2_subdev_call(sd, video, g_dv_timings, timings);
}
