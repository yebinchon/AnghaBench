
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivtv {int v4l2_cap; unsigned int active_output; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;


 int EINVAL ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 TYPE_1__* fh2id (void*) ;

__attribute__((used)) static int ivtv_g_output(struct file *file, void *fh, unsigned int *i)
{
 struct ivtv *itv = fh2id(fh)->itv;

 if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
  return -EINVAL;

 *i = itv->active_output;

 return 0;
}
