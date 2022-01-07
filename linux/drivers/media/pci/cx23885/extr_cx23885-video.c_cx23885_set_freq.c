
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct v4l2_ctrl {int dummy; } ;
struct cx23885_dev {scalar_t__ tuner_type; int ctrl_handler; int freq; } ;


 int EINVAL ;
 scalar_t__ TUNER_ABSENT ;
 int V4L2_CID_AUDIO_MUTE ;
 int call_all (struct cx23885_dev*,int ,int ,struct v4l2_frequency const*) ;
 int msleep (int) ;
 int s_frequency ;
 int tuner ;
 scalar_t__ unlikely (int) ;
 struct v4l2_ctrl* v4l2_ctrl_find (int *,int ) ;
 int v4l2_ctrl_g_ctrl (struct v4l2_ctrl*) ;
 int v4l2_ctrl_s_ctrl (struct v4l2_ctrl*,int) ;

__attribute__((used)) static int cx23885_set_freq(struct cx23885_dev *dev, const struct v4l2_frequency *f)
{
 struct v4l2_ctrl *mute;
 int old_mute_val = 1;

 if (dev->tuner_type == TUNER_ABSENT)
  return -EINVAL;
 if (unlikely(f->tuner != 0))
  return -EINVAL;

 dev->freq = f->frequency;


 mute = v4l2_ctrl_find(&dev->ctrl_handler, V4L2_CID_AUDIO_MUTE);
 if (mute) {
  old_mute_val = v4l2_ctrl_g_ctrl(mute);
  if (!old_mute_val)
   v4l2_ctrl_s_ctrl(mute, 1);
 }

 call_all(dev, tuner, s_frequency, f);


 msleep(100);


 if (old_mute_val == 0)
  v4l2_ctrl_s_ctrl(mute, old_mute_val);

 return 0;
}
