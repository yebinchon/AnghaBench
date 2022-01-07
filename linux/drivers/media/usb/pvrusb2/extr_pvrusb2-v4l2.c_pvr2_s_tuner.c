
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int audmode; } ;
struct TYPE_4__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_3__ {struct pvr2_hdw* hdw; } ;


 int EINVAL ;
 int PVR2_CID_AUDIOMODE ;
 int pvr2_ctrl_set_value (int ,int ) ;
 int pvr2_hdw_commit_ctl (struct pvr2_hdw*) ;
 int pvr2_hdw_get_ctrl_by_id (struct pvr2_hdw*,int ) ;

__attribute__((used)) static int pvr2_s_tuner(struct file *file, void *priv, const struct v4l2_tuner *vt)
{
 struct pvr2_v4l2_fh *fh = file->private_data;
 struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 int ret;

 if (vt->index != 0)
  return -EINVAL;

 ret = pvr2_ctrl_set_value(
   pvr2_hdw_get_ctrl_by_id(hdw, PVR2_CID_AUDIOMODE),
   vt->audmode);
 pvr2_hdw_commit_ctl(hdw);
 return ret;
}
