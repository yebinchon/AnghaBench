
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct ivtv {unsigned int nof_inputs; unsigned int active_input; TYPE_4__* streams; int tuner_std; TYPE_2__* card; int audio_input; int capturing; } ;
struct file {int dummy; } ;
struct TYPE_10__ {struct ivtv* itv; } ;
struct TYPE_8__ {int tvnorms; } ;
struct TYPE_9__ {TYPE_3__ vdev; } ;
struct TYPE_7__ {TYPE_1__* video_inputs; } ;
struct TYPE_6__ {scalar_t__ video_type; int audio_index; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IVTV_CARD_INPUT_VID_TUNER ;
 int IVTV_DEBUG_INFO (char*,...) ;
 int IVTV_ENC_STREAM_TYPE_VBI ;
 int V4L2_STD_ALL ;
 scalar_t__ atomic_read (int *) ;
 TYPE_5__* fh2id (void*) ;
 int ivtv_audio_set_io (struct ivtv*) ;
 int ivtv_mute (struct ivtv*) ;
 int ivtv_unmute (struct ivtv*) ;
 int ivtv_video_set_io (struct ivtv*) ;

int ivtv_s_input(struct file *file, void *fh, unsigned int inp)
{
 struct ivtv *itv = fh2id(fh)->itv;
 v4l2_std_id std;
 int i;

 if (inp >= itv->nof_inputs)
  return -EINVAL;

 if (inp == itv->active_input) {
  IVTV_DEBUG_INFO("Input unchanged\n");
  return 0;
 }

 if (atomic_read(&itv->capturing) > 0) {
  return -EBUSY;
 }

 IVTV_DEBUG_INFO("Changing input from %d to %d\n",
   itv->active_input, inp);

 itv->active_input = inp;


 itv->audio_input = itv->card->video_inputs[inp].audio_index;

 if (itv->card->video_inputs[inp].video_type == IVTV_CARD_INPUT_VID_TUNER)
  std = itv->tuner_std;
 else
  std = V4L2_STD_ALL;
 for (i = 0; i <= IVTV_ENC_STREAM_TYPE_VBI; i++)
  itv->streams[i].vdev.tvnorms = std;



 ivtv_mute(itv);
 ivtv_video_set_io(itv);
 ivtv_audio_set_io(itv);
 ivtv_unmute(itv);

 return 0;
}
