
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int dummy; } ;
struct timbradio {int sd_tuner; } ;
struct file {int dummy; } ;


 int s_tuner ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_tuner const*) ;
 struct timbradio* video_drvdata (struct file*) ;

__attribute__((used)) static int timbradio_vidioc_s_tuner(struct file *file, void *priv,
 const struct v4l2_tuner *v)
{
 struct timbradio *tr = video_drvdata(file);
 return v4l2_subdev_call(tr->sd_tuner, tuner, s_tuner, v);
}
