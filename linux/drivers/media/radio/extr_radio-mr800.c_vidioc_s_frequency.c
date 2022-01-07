
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct file {int dummy; } ;
struct amradio_device {int dummy; } ;


 int EINVAL ;
 int amradio_set_freq (struct amradio_device*,int ) ;
 struct amradio_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    const struct v4l2_frequency *f)
{
 struct amradio_device *radio = video_drvdata(file);

 if (f->tuner != 0)
  return -EINVAL;
 return amradio_set_freq(radio, f->frequency);
}
