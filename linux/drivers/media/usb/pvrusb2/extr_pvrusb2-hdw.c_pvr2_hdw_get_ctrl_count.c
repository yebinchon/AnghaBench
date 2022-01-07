
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {unsigned int control_cnt; } ;



unsigned int pvr2_hdw_get_ctrl_count(struct pvr2_hdw *hdw)
{
 return hdw->control_cnt;
}
