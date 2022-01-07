
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct v4l2_input {int index; scalar_t__ type; int audioset; int std; int name; } ;
struct ivtv_card_video_input {int video_type; } ;
struct ivtv {int nof_inputs; int nof_audio_inputs; int tuner_std; TYPE_1__* card; } ;
struct TYPE_2__ {struct ivtv_card_video_input* video_inputs; } ;


 int EINVAL ;
 int IVTV_CARD_INPUT_VID_TUNER ;
 scalar_t__ V4L2_INPUT_TYPE_CAMERA ;
 scalar_t__ V4L2_INPUT_TYPE_TUNER ;
 int V4L2_STD_ALL ;
 int strscpy (int ,char const* const,int) ;

int ivtv_get_input(struct ivtv *itv, u16 index, struct v4l2_input *input)
{
 const struct ivtv_card_video_input *card_input = itv->card->video_inputs + index;
 static const char * const input_strs[] = {
  "Tuner 1",
  "S-Video 1",
  "S-Video 2",
  "Composite 1",
  "Composite 2",
  "Composite 3"
 };

 if (index >= itv->nof_inputs)
  return -EINVAL;
 input->index = index;
 strscpy(input->name, input_strs[card_input->video_type - 1],
  sizeof(input->name));
 input->type = (card_input->video_type == IVTV_CARD_INPUT_VID_TUNER ?
   V4L2_INPUT_TYPE_TUNER : V4L2_INPUT_TYPE_CAMERA);
 input->audioset = (1 << itv->nof_audio_inputs) - 1;
 input->std = (input->type == V4L2_INPUT_TYPE_TUNER) ?
    itv->tuner_std : V4L2_STD_ALL;
 return 0;
}
