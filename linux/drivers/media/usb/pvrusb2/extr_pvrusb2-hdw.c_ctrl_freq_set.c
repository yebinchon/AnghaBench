
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ctrl {int hdw; } ;


 int pvr2_hdw_set_cur_freq (int ,int) ;

__attribute__((used)) static int ctrl_freq_set(struct pvr2_ctrl *cptr,int m,int v)
{
 pvr2_hdw_set_cur_freq(cptr->hdw,v);
 return 0;
}
