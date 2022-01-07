
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {unsigned int index; int name; int capability; } ;
struct file {int dummy; } ;


 int EINVAL ;
 unsigned int HDPVR_AUDIO_INPUTS ;
 int V4L2_AUDCAP_STEREO ;
 int * audio_iname ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_enumaudio(struct file *file, void *priv,
    struct v4l2_audio *audio)
{
 unsigned int n;

 n = audio->index;
 if (n >= HDPVR_AUDIO_INPUTS)
  return -EINVAL;

 audio->capability = V4L2_AUDCAP_STEREO;

 strscpy(audio->name, audio_iname[n], sizeof(audio->name));

 return 0;
}
