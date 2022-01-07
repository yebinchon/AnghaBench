
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_frequency {scalar_t__ tuner; } ;
struct TYPE_3__ {scalar_t__ vfl_dir; } ;
struct ivtv_stream {TYPE_1__ vdev; } ;
struct ivtv {struct ivtv_stream* streams; } ;
struct file {int dummy; } ;
struct TYPE_4__ {size_t type; struct ivtv* itv; } ;


 int EINVAL ;
 int ENOTTY ;
 TYPE_2__* fh2id (void*) ;
 int g_frequency ;
 int ivtv_call_all (struct ivtv*,int ,int ,struct v4l2_frequency*) ;
 int tuner ;

__attribute__((used)) static int ivtv_g_frequency(struct file *file, void *fh, struct v4l2_frequency *vf)
{
 struct ivtv *itv = fh2id(fh)->itv;
 struct ivtv_stream *s = &itv->streams[fh2id(fh)->type];

 if (s->vdev.vfl_dir)
  return -ENOTTY;
 if (vf->tuner != 0)
  return -EINVAL;

 ivtv_call_all(itv, tuner, g_frequency, vf);
 return 0;
}
