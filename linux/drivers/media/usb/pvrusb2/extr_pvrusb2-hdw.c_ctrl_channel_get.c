
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int freqSlotRadio; int freqSlotTelevision; scalar_t__ freqSelector; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;



__attribute__((used)) static int ctrl_channel_get(struct pvr2_ctrl *cptr,int *vp)
{
 struct pvr2_hdw *hdw = cptr->hdw;
 *vp = hdw->freqSelector ? hdw->freqSlotRadio : hdw->freqSlotTelevision;
 return 0;
}
