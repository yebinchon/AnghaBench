
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct TYPE_3__ {scalar_t__ vfl_dir; } ;
struct ivtv_stream {TYPE_1__ vdev; } ;
struct ivtv {struct ivtv_stream* streams; } ;
struct file {int dummy; } ;
struct TYPE_4__ {size_t type; struct ivtv* itv; } ;


 int EINVAL ;
 int ENOTTY ;
 int IVTV_DEBUG_INFO (char*,int ) ;
 TYPE_2__* fh2id (void*) ;
 int ivtv_call_all (struct ivtv*,int ,int ,struct v4l2_frequency const*) ;
 int ivtv_mute (struct ivtv*) ;
 int ivtv_unmute (struct ivtv*) ;
 int s_frequency ;
 int tuner ;

int ivtv_s_frequency(struct file *file, void *fh, const struct v4l2_frequency *vf)
{
 struct ivtv *itv = fh2id(fh)->itv;
 struct ivtv_stream *s = &itv->streams[fh2id(fh)->type];

 if (s->vdev.vfl_dir)
  return -ENOTTY;
 if (vf->tuner != 0)
  return -EINVAL;

 ivtv_mute(itv);
 IVTV_DEBUG_INFO("v4l2 ioctl: set frequency %d\n", vf->frequency);
 ivtv_call_all(itv, tuner, s_frequency, vf);
 ivtv_unmute(itv);
 return 0;
}
