
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vt ;
typedef scalar_t__ u32 ;
struct v4l2_tuner {scalar_t__ audmode; int rxsubchans; } ;
struct TYPE_2__ {int audio_mode; } ;
struct cx18 {scalar_t__ dualwatch_stereo_mode; TYPE_1__ cxhdl; } ;


 int CX18_DEBUG_INFO (char*,...) ;
 scalar_t__ V4L2_TUNER_MODE_LANG1_LANG2 ;
 int V4L2_TUNER_SUB_LANG2 ;
 int cx18_call_all (struct cx18*,int ,int ,struct v4l2_tuner*) ;
 int g_tuner ;
 int memset (struct v4l2_tuner*,int ,int) ;
 int tuner ;
 scalar_t__ v4l2_ctrl_g_ctrl (int ) ;
 scalar_t__ v4l2_ctrl_s_ctrl (int ,scalar_t__) ;

__attribute__((used)) static void cx18_dualwatch(struct cx18 *cx)
{
 struct v4l2_tuner vt;
 u32 new_stereo_mode;
 const u32 dual = 0x0200;

 new_stereo_mode = v4l2_ctrl_g_ctrl(cx->cxhdl.audio_mode);
 memset(&vt, 0, sizeof(vt));
 cx18_call_all(cx, tuner, g_tuner, &vt);
 if (vt.audmode == V4L2_TUNER_MODE_LANG1_LANG2 &&
   (vt.rxsubchans & V4L2_TUNER_SUB_LANG2))
  new_stereo_mode = dual;

 if (new_stereo_mode == cx->dualwatch_stereo_mode)
  return;

 CX18_DEBUG_INFO("dualwatch: change stereo flag from 0x%x to 0x%x.\n",
      cx->dualwatch_stereo_mode, new_stereo_mode);
 if (v4l2_ctrl_s_ctrl(cx->cxhdl.audio_mode, new_stereo_mode))
  CX18_DEBUG_INFO("dualwatch: changing stereo flag failed\n");
}
