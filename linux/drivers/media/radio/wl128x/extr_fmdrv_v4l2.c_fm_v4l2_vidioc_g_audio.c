
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int capability; int name; } ;
struct file {int dummy; } ;


 int V4L2_AUDCAP_STEREO ;
 int memset (struct v4l2_audio*,int ,int) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int fm_v4l2_vidioc_g_audio(struct file *file, void *priv,
  struct v4l2_audio *audio)
{
 memset(audio, 0, sizeof(*audio));
 strscpy(audio->name, "Radio", sizeof(audio->name));
 audio->capability = V4L2_AUDCAP_STEREO;

 return 0;
}
