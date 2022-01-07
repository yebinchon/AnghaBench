
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {unsigned int* freqTable; int freqSlotRadio; int freqSlotTelevision; scalar_t__ freqSelector; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;


 int FREQTABLE_SIZE ;
 int pvr2_hdw_set_cur_freq (struct pvr2_hdw*,unsigned int) ;

__attribute__((used)) static int ctrl_channel_set(struct pvr2_ctrl *cptr,int m,int slotId)
{
 unsigned freq = 0;
 struct pvr2_hdw *hdw = cptr->hdw;
 if ((slotId < 0) || (slotId > FREQTABLE_SIZE)) return 0;
 if (slotId > 0) {
  freq = hdw->freqTable[slotId-1];
  if (!freq) return 0;
  pvr2_hdw_set_cur_freq(hdw,freq);
 }
 if (hdw->freqSelector) {
  hdw->freqSlotRadio = slotId;
 } else {
  hdw->freqSlotTelevision = slotId;
 }
 return 0;
}
