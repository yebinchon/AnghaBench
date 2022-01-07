
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int audmode; } ;
struct file {int dummy; } ;
struct amradio_device {int dummy; } ;


 int EINVAL ;

 int WANT_MONO ;
 int WANT_STEREO ;
 int amradio_set_stereo (struct amradio_device*,int ) ;
 struct amradio_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    const struct v4l2_tuner *v)
{
 struct amradio_device *radio = video_drvdata(file);

 if (v->index > 0)
  return -EINVAL;


 switch (v->audmode) {
 case 128:
  return amradio_set_stereo(radio, WANT_MONO);
 default:
  return amradio_set_stereo(radio, WANT_STEREO);
 }
}
