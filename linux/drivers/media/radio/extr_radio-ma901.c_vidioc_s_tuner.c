
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int audmode; } ;
struct ma901radio_device {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int MA901_WANT_MONO ;
 int MA901_WANT_STEREO ;

 int ma901_set_stereo (struct ma901radio_device*,int ) ;
 struct ma901radio_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    const struct v4l2_tuner *v)
{
 struct ma901radio_device *radio = video_drvdata(file);

 if (v->index > 0)
  return -EINVAL;


 switch (v->audmode) {
 case 128:
  return ma901_set_stereo(radio, MA901_WANT_MONO);
 default:
  return ma901_set_stereo(radio, MA901_WANT_STEREO);
 }
}
