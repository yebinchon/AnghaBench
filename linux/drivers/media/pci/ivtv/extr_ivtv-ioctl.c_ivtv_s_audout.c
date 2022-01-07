
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_audioout {scalar_t__ index; } ;
struct ivtv {TYPE_1__* card; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct ivtv* itv; } ;
struct TYPE_3__ {int * video_outputs; } ;


 int EINVAL ;
 TYPE_2__* fh2id (void*) ;

__attribute__((used)) static int ivtv_s_audout(struct file *file, void *fh, const struct v4l2_audioout *vout)
{
 struct ivtv *itv = fh2id(fh)->itv;

 if (itv->card->video_outputs == ((void*)0) || vout->index != 0)
  return -EINVAL;
 return 0;
}
