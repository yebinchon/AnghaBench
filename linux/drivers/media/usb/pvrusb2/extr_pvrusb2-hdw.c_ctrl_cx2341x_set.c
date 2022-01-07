
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ext_controls {int count; int value; int id; struct v4l2_ext_controls* controls; } ;
struct v4l2_ext_control {int count; int value; int id; struct v4l2_ext_control* controls; } ;
struct pvr2_hdw {int enc_unsafe_stale; int enc_stale; int enc_ctl_state; int state_encoder_run; } ;
struct pvr2_ctrl {TYPE_1__* info; struct pvr2_hdw* hdw; } ;
typedef int cs ;
typedef int c1 ;
struct TYPE_2__ {int v4l_id; } ;


 int EBUSY ;
 int VIDIOC_S_EXT_CTRLS ;
 int cx2341x_ext_ctrls (int *,int ,struct v4l2_ext_controls*,int ) ;
 int memset (struct v4l2_ext_controls*,int ,int) ;

__attribute__((used)) static int ctrl_cx2341x_set(struct pvr2_ctrl *cptr,int m,int v)
{
 int ret;
 struct pvr2_hdw *hdw = cptr->hdw;
 struct v4l2_ext_controls cs;
 struct v4l2_ext_control c1;
 memset(&cs,0,sizeof(cs));
 memset(&c1,0,sizeof(c1));
 cs.controls = &c1;
 cs.count = 1;
 c1.id = cptr->info->v4l_id;
 c1.value = v;
 ret = cx2341x_ext_ctrls(&hdw->enc_ctl_state,
    hdw->state_encoder_run, &cs,
    VIDIOC_S_EXT_CTRLS);
 if (ret == -EBUSY) {





  ret = cx2341x_ext_ctrls(&hdw->enc_ctl_state,
     0, &cs,
     VIDIOC_S_EXT_CTRLS);
  if (!ret) hdw->enc_unsafe_stale = !0;
 }
 if (ret) return ret;
 hdw->enc_stale = !0;
 return 0;
}
