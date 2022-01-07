
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int dummy; } ;


 int FX2CMD_ONAIR_DTV_STREAMING_OFF ;
 int FX2CMD_ONAIR_DTV_STREAMING_ON ;
 int pvr2_issue_simple_cmd (struct pvr2_hdw*,int ) ;

__attribute__((used)) static int pvr2_hdw_cmd_onair_digital_path_ctrl(struct pvr2_hdw *hdw,
      int onoff)
{
 return pvr2_issue_simple_cmd(hdw,(onoff ?
       FX2CMD_ONAIR_DTV_STREAMING_ON :
       FX2CMD_ONAIR_DTV_STREAMING_OFF));
}
