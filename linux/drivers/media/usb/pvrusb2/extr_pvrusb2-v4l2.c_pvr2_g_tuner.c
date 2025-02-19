
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; } ;
struct TYPE_4__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_3__ {struct pvr2_hdw* hdw; } ;


 int EINVAL ;
 int pvr2_hdw_execute_tuner_poll (struct pvr2_hdw*) ;
 int pvr2_hdw_get_tuner_status (struct pvr2_hdw*,struct v4l2_tuner*) ;

__attribute__((used)) static int pvr2_g_tuner(struct file *file, void *priv, struct v4l2_tuner *vt)
{
 struct pvr2_v4l2_fh *fh = file->private_data;
 struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;

 if (vt->index != 0)
  return -EINVAL;

 pvr2_hdw_execute_tuner_poll(hdw);
 return pvr2_hdw_get_tuner_status(hdw, vt);
}
