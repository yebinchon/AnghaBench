
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct v4l2_output {int index; int audioset; int std; int type; int name; } ;
struct ivtv_card_output {int name; } ;
struct ivtv {TYPE_1__* card; } ;
struct TYPE_2__ {int nof_outputs; struct ivtv_card_output* video_outputs; } ;


 int EINVAL ;
 int V4L2_OUTPUT_TYPE_ANALOG ;
 int V4L2_STD_ALL ;
 int strscpy (int ,int ,int) ;

int ivtv_get_output(struct ivtv *itv, u16 index, struct v4l2_output *output)
{
 const struct ivtv_card_output *card_output = itv->card->video_outputs + index;

 if (index >= itv->card->nof_outputs)
  return -EINVAL;
 output->index = index;
 strscpy(output->name, card_output->name, sizeof(output->name));
 output->type = V4L2_OUTPUT_TYPE_ANALOG;
 output->audioset = 1;
 output->std = V4L2_STD_ALL;
 return 0;
}
