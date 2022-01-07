
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ivtv {unsigned int active_output; TYPE_2__* card; } ;
struct file {int dummy; } ;
struct TYPE_6__ {struct ivtv* itv; } ;
struct TYPE_5__ {unsigned int nof_outputs; TYPE_1__* video_outputs; } ;
struct TYPE_4__ {int video_output; } ;


 int EINVAL ;
 int IVTV_DEBUG_INFO (char*,...) ;
 int IVTV_HW_SAA7127 ;
 int SAA7127_INPUT_TYPE_NORMAL ;
 TYPE_3__* fh2id (void*) ;
 int ivtv_call_hw (struct ivtv*,int ,int ,int ,int ,int ,int ) ;
 int s_routing ;
 int video ;

__attribute__((used)) static int ivtv_s_output(struct file *file, void *fh, unsigned int outp)
{
 struct ivtv *itv = fh2id(fh)->itv;

 if (outp >= itv->card->nof_outputs)
  return -EINVAL;

 if (outp == itv->active_output) {
  IVTV_DEBUG_INFO("Output unchanged\n");
  return 0;
 }
 IVTV_DEBUG_INFO("Changing output from %d to %d\n",
     itv->active_output, outp);

 itv->active_output = outp;
 ivtv_call_hw(itv, IVTV_HW_SAA7127, video, s_routing,
   SAA7127_INPUT_TYPE_NORMAL,
   itv->card->video_outputs[outp].video_output, 0);

 return 0;
}
