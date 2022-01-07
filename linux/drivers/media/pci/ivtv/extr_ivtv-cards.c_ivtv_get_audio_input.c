
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct v4l2_audio {int index; int capability; int name; } ;
struct ivtv_card_audio_input {int audio_type; } ;
struct ivtv {int nof_audio_inputs; TYPE_1__* card; } ;
struct TYPE_2__ {struct ivtv_card_audio_input* audio_inputs; } ;


 int EINVAL ;
 int V4L2_AUDCAP_STEREO ;
 int memset (struct v4l2_audio*,int ,int) ;
 int strscpy (int ,char const* const,int) ;

int ivtv_get_audio_input(struct ivtv *itv, u16 index, struct v4l2_audio *audio)
{
 const struct ivtv_card_audio_input *aud_input = itv->card->audio_inputs + index;
 static const char * const input_strs[] = {
  "Tuner 1",
  "Line In 1",
  "Line In 2"
 };

 memset(audio, 0, sizeof(*audio));
 if (index >= itv->nof_audio_inputs)
  return -EINVAL;
 strscpy(audio->name, input_strs[aud_input->audio_type - 1],
  sizeof(audio->name));
 audio->index = index;
 audio->capability = V4L2_AUDCAP_STEREO;
 return 0;
}
