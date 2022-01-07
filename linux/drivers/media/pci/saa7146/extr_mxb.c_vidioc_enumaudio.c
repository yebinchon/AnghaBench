
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {size_t index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 size_t MXB_AUDIOS ;
 struct v4l2_audio* mxb_audios ;

__attribute__((used)) static int vidioc_enumaudio(struct file *file, void *fh, struct v4l2_audio *a)
{
 if (a->index >= MXB_AUDIOS)
  return -EINVAL;
 *a = mxb_audios[a->index];
 return 0;
}
