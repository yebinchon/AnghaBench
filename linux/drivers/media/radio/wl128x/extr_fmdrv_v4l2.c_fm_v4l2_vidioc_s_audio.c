
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int fm_v4l2_vidioc_s_audio(struct file *file, void *priv,
  const struct v4l2_audio *audio)
{
 if (audio->index != 0)
  return -EINVAL;

 return 0;
}
