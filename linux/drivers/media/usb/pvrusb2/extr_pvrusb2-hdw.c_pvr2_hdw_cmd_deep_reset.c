
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int dummy; } ;


 int FX2CMD_DEEP_RESET ;
 int pvr2_issue_simple_cmd (struct pvr2_hdw*,int ) ;

int pvr2_hdw_cmd_deep_reset(struct pvr2_hdw *hdw)
{
 return pvr2_issue_simple_cmd(hdw,FX2CMD_DEEP_RESET);
}
