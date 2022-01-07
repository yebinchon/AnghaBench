
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_fract {int dummy; } ;
struct rvin_dev {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int g_pixelaspect ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_fract*) ;
 int video ;
 struct rvin_dev* video_drvdata (struct file*) ;
 struct v4l2_subdev* vin_to_source (struct rvin_dev*) ;

__attribute__((used)) static int rvin_g_pixelaspect(struct file *file, void *priv,
         int type, struct v4l2_fract *f)
{
 struct rvin_dev *vin = video_drvdata(file);
 struct v4l2_subdev *sd = vin_to_source(vin);

 if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 return v4l2_subdev_call(sd, video, g_pixelaspect, f);
}
