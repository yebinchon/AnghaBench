
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_audio {scalar_t__ index; } ;
struct ivtv {scalar_t__ nof_audio_inputs; scalar_t__ audio_input; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;


 int EINVAL ;
 TYPE_1__* fh2id (void*) ;
 int ivtv_audio_set_io (struct ivtv*) ;

__attribute__((used)) static int ivtv_s_audio(struct file *file, void *fh, const struct v4l2_audio *vout)
{
 struct ivtv *itv = fh2id(fh)->itv;

 if (vout->index >= itv->nof_audio_inputs)
  return -EINVAL;

 itv->audio_input = vout->index;
 ivtv_audio_set_io(itv);

 return 0;
}
