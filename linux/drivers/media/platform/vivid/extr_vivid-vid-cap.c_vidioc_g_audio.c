
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {size_t tv_audio_input; } ;
struct v4l2_audio {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct vivid_dev* video_drvdata (struct file*) ;
 struct v4l2_audio* vivid_audio_inputs ;
 int vivid_is_sdtv_cap (struct vivid_dev*) ;

int vidioc_g_audio(struct file *file, void *fh, struct v4l2_audio *vin)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (!vivid_is_sdtv_cap(dev))
  return -EINVAL;
 *vin = vivid_audio_inputs[dev->tv_audio_input];
 return 0;
}
