
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_audio {size_t index; int name; int capability; } ;
struct TYPE_2__ {size_t audio_input; } ;
struct hdpvr_device {TYPE_1__ options; } ;
struct file {int dummy; } ;


 int V4L2_AUDCAP_STEREO ;
 int * audio_iname ;
 int strscpy (int ,int ,int) ;
 struct hdpvr_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *private_data,
     struct v4l2_audio *audio)
{
 struct hdpvr_device *dev = video_drvdata(file);

 audio->index = dev->options.audio_input;
 audio->capability = V4L2_AUDCAP_STEREO;
 strscpy(audio->name, audio_iname[audio->index], sizeof(audio->name));
 return 0;
}
