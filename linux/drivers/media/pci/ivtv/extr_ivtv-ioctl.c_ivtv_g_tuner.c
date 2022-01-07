
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; scalar_t__ type; int name; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 TYPE_1__* fh2id (void*) ;
 int g_tuner ;
 int ivtv_call_all (struct ivtv*,int ,int ,struct v4l2_tuner*) ;
 int strscpy (int ,char*,int) ;
 int tuner ;

__attribute__((used)) static int ivtv_g_tuner(struct file *file, void *fh, struct v4l2_tuner *vt)
{
 struct ivtv *itv = fh2id(fh)->itv;

 if (vt->index != 0)
  return -EINVAL;

 ivtv_call_all(itv, tuner, g_tuner, vt);

 if (vt->type == V4L2_TUNER_RADIO)
  strscpy(vt->name, "ivtv Radio Tuner", sizeof(vt->name));
 else
  strscpy(vt->name, "ivtv TV Tuner", sizeof(vt->name));
 return 0;
}
