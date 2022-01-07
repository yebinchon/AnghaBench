
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long rangelow; int capability; } ;
struct pvr2_hdw {TYPE_1__ tuner_signal_info; scalar_t__ tuner_signal_stale; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;


 int TV_MIN_FREQ ;
 int V4L2_TUNER_CAP_LOW ;
 int pvr2_hdw_status_poll (struct pvr2_hdw*) ;

__attribute__((used)) static int ctrl_freq_min_get(struct pvr2_ctrl *cptr, int *vp)
{
 unsigned long fv;
 struct pvr2_hdw *hdw = cptr->hdw;
 if (hdw->tuner_signal_stale) {
  pvr2_hdw_status_poll(hdw);
 }
 fv = hdw->tuner_signal_info.rangelow;
 if (!fv) {

  *vp = TV_MIN_FREQ;
  return 0;
 }
 if (hdw->tuner_signal_info.capability & V4L2_TUNER_CAP_LOW) {
  fv = (fv * 125) / 2;
 } else {
  fv = fv * 62500;
 }
 *vp = fv;
 return 0;
}
