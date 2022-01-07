
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {scalar_t__ tv_audio_output; } ;
struct v4l2_audioout {scalar_t__ index; } ;
struct file {int dummy; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int EINVAL ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_audio_outputs ;
 int vivid_is_svid_out (struct vivid_dev*) ;

int vidioc_s_audout(struct file *file, void *fh, const struct v4l2_audioout *vout)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (!vivid_is_svid_out(dev))
  return -EINVAL;
 if (vout->index >= ARRAY_SIZE(vivid_audio_outputs))
  return -EINVAL;
 dev->tv_audio_output = vout->index;
 return 0;
}
