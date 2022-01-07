
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int freqProgSlot; int* freqTable; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;


 int FREQTABLE_SIZE ;

__attribute__((used)) static int ctrl_channelfreq_get(struct pvr2_ctrl *cptr,int *vp)
{
 struct pvr2_hdw *hdw = cptr->hdw;
 if ((hdw->freqProgSlot > 0) && (hdw->freqProgSlot <= FREQTABLE_SIZE)) {
  *vp = hdw->freqTable[hdw->freqProgSlot-1];
 } else {
  *vp = 0;
 }
 return 0;
}
