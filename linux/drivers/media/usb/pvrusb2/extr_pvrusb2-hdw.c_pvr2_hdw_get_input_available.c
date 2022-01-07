
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {unsigned int input_avail_mask; } ;



unsigned int pvr2_hdw_get_input_available(struct pvr2_hdw *hdw)
{
 return hdw->input_avail_mask;
}
