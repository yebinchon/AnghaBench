
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {unsigned long freqValTelevision; unsigned long freqValRadio; scalar_t__ freqSelector; } ;



unsigned long pvr2_hdw_get_cur_freq(struct pvr2_hdw *hdw)
{
 return hdw->freqSelector ? hdw->freqValTelevision : hdw->freqValRadio;
}
