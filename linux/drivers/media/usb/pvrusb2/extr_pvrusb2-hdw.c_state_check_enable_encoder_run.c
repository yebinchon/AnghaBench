
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_hdw {int pathway_state; int state_encoder_runok; TYPE_1__* hdw_desc; int state_decoder_ready; int state_decoder_run; int state_pathway_ok; int state_encoder_ok; } ;
struct TYPE_2__ {int digital_control_scheme; } ;


 int PVR2_DIGITAL_SCHEME_ONAIR ;



__attribute__((used)) static int state_check_enable_encoder_run(struct pvr2_hdw *hdw)
{
 if (!hdw->state_encoder_ok) {

  return 0;
 }
 if (!hdw->state_pathway_ok) {


  return 0;
 }

 switch (hdw->pathway_state) {
 case 129:
  if (hdw->state_decoder_run && hdw->state_decoder_ready) {


   return !0;
  }
  break;
 case 128:
  if ((hdw->hdw_desc->digital_control_scheme ==
       PVR2_DIGITAL_SCHEME_ONAIR) &&
      !hdw->state_encoder_runok) {
   return !0;
  }
  break;
 default:

  break;
 }


 return 0;
}
