
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct v4l2_audioout {int name; } ;
struct ivtv {TYPE_1__* card; } ;
struct TYPE_2__ {int * video_outputs; } ;


 int EINVAL ;
 int memset (struct v4l2_audioout*,int ,int) ;
 int strscpy (int ,char*,int) ;

int ivtv_get_audio_output(struct ivtv *itv, u16 index, struct v4l2_audioout *aud_output)
{
 memset(aud_output, 0, sizeof(*aud_output));
 if (itv->card->video_outputs == ((void*)0) || index != 0)
  return -EINVAL;
 strscpy(aud_output->name, "A/V Audio Out", sizeof(aud_output->name));
 return 0;
}
