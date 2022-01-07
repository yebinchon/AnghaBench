
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ctrl {int hdw; } ;


 int pvr2_hdw_set_input (int ,int) ;

__attribute__((used)) static int ctrl_set_input(struct pvr2_ctrl *cptr,int m,int v)
{
 return pvr2_hdw_set_input(cptr->hdw,v);
}
