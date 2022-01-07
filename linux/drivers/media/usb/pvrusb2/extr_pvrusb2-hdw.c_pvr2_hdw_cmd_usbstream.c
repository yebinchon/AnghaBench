
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_hdw {scalar_t__ pathway_state; TYPE_1__* hdw_desc; } ;
struct TYPE_2__ {int digital_control_scheme; } ;


 int EINVAL ;
 int FX2CMD_HCW_DTV_STREAMING_OFF ;
 int FX2CMD_HCW_DTV_STREAMING_ON ;
 int FX2CMD_STREAMING_OFF ;
 int FX2CMD_STREAMING_ON ;


 scalar_t__ PVR2_PATHWAY_ANALOG ;
 scalar_t__ PVR2_PATHWAY_DIGITAL ;
 int pvr2_hdw_cmd_onair_digital_path_ctrl (struct pvr2_hdw*,int) ;
 int pvr2_issue_simple_cmd (struct pvr2_hdw*,int ) ;

__attribute__((used)) static int pvr2_hdw_cmd_usbstream(struct pvr2_hdw *hdw,int runFl)
{
 int ret;



 if (hdw->pathway_state == PVR2_PATHWAY_ANALOG) {
  return pvr2_issue_simple_cmd(hdw,
          (runFl ?
           FX2CMD_STREAMING_ON :
           FX2CMD_STREAMING_OFF));

 }

 if (hdw->pathway_state != PVR2_PATHWAY_DIGITAL) {

  return -EINVAL;
 }





 switch (hdw->hdw_desc->digital_control_scheme) {
 case 129:
  return pvr2_issue_simple_cmd(hdw,
          (runFl ?
           FX2CMD_HCW_DTV_STREAMING_ON :
           FX2CMD_HCW_DTV_STREAMING_OFF));
 case 128:
  ret = pvr2_issue_simple_cmd(hdw,
         (runFl ?
          FX2CMD_STREAMING_ON :
          FX2CMD_STREAMING_OFF));
  if (ret) return ret;
  return pvr2_hdw_cmd_onair_digital_path_ctrl(hdw,runFl);
 default:
  return -EINVAL;
 }
}
