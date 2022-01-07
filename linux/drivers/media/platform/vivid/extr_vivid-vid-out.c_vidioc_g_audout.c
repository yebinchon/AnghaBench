
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {size_t tv_audio_output; } ;
struct v4l2_audioout {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct vivid_dev* video_drvdata (struct file*) ;
 struct v4l2_audioout* vivid_audio_outputs ;
 int vivid_is_svid_out (struct vivid_dev*) ;

int vidioc_g_audout(struct file *file, void *fh, struct v4l2_audioout *vout)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (!vivid_is_svid_out(dev))
  return -EINVAL;
 *vout = vivid_audio_outputs[dev->tv_audio_output];
 return 0;
}
