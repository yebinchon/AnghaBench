
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {int frequency; int type; scalar_t__ tuner; } ;
struct ivtv_open_id {int type; struct ivtv* itv; } ;
struct ivtv {int std; int active_input; int std_out; int v4l2_cap; int cxhdl; int tuner_std; int has_cx23415; TYPE_1__* card; int sd_video; int i_flags; } ;
struct TYPE_2__ {int hw_all; int v4l2_capabilities; } ;


 int ENXIO ;
 int IVTV_DEBUG_INFO (char*) ;
 int IVTV_ENC_STREAM_TYPE_MPG ;
 int IVTV_F_I_FAILED ;
 int IVTV_F_I_INITED ;
 int IVTV_HW_CX25840 ;
 int IVTV_HW_SAA7127 ;
 int IVTV_IRQ_DEC_VSYNC ;
 int IVTV_IRQ_MASK_INIT ;
 int IVTV_REG_DMACONTROL ;
 int IVTV_WARN (char*) ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int V4L2_STD_NTSC_M ;
 int V4L2_STD_NTSC_M_JP ;
 int V4L2_TUNER_ANALOG_TV ;
 int core ;
 int cx2341x_handler_setup (int *) ;
 int ivtv_call_hw (struct ivtv*,int ,int ,int ,int) ;
 int ivtv_clear_irq_mask (struct ivtv*,int) ;
 scalar_t__ ivtv_firmware_init (struct ivtv*) ;
 int ivtv_firmware_versions (struct ivtv*) ;
 int ivtv_init_mpeg_decoder (struct ivtv*) ;
 int ivtv_s_frequency (int *,struct ivtv_open_id*,struct v4l2_frequency*) ;
 int ivtv_s_input (int *,struct ivtv_open_id*,int) ;
 int ivtv_s_std_dec (struct ivtv*,int ) ;
 int ivtv_s_std_enc (struct ivtv*,int ) ;
 int ivtv_set_osd_alpha (struct ivtv*) ;
 int load_fw ;
 int s_stream ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l2_subdev_call (int ,int ,int ) ;
 int video ;
 int write_reg_sync (int,int ) ;

int ivtv_init_on_first_open(struct ivtv *itv)
{
 struct v4l2_frequency vf;

 struct ivtv_open_id fh;
 int fw_retry_count = 3;
 int video_input;

 fh.itv = itv;
 fh.type = IVTV_ENC_STREAM_TYPE_MPG;

 if (test_bit(IVTV_F_I_FAILED, &itv->i_flags))
  return -ENXIO;

 if (test_and_set_bit(IVTV_F_I_INITED, &itv->i_flags))
  return 0;

 while (--fw_retry_count > 0) {

  if (ivtv_firmware_init(itv) == 0)
   break;
  if (fw_retry_count > 1)
   IVTV_WARN("Retry loading firmware\n");
 }

 if (fw_retry_count == 0) {
  set_bit(IVTV_F_I_FAILED, &itv->i_flags);
  return -ENXIO;
 }


 IVTV_DEBUG_INFO("Getting firmware version..\n");
 ivtv_firmware_versions(itv);

 if (itv->card->hw_all & IVTV_HW_CX25840)
  v4l2_subdev_call(itv->sd_video, core, load_fw);

 vf.tuner = 0;
 vf.type = V4L2_TUNER_ANALOG_TV;
 vf.frequency = 6400;



 if (itv->std == V4L2_STD_NTSC_M_JP) {
  vf.frequency = 1460;
 }
 else if (itv->std & V4L2_STD_NTSC_M) {
  vf.frequency = 1076;
 }

 video_input = itv->active_input;
 itv->active_input++;
 ivtv_s_input(((void*)0), &fh, video_input);



 itv->std++;
 itv->std_out = itv->std;
 ivtv_s_frequency(((void*)0), &fh, &vf);

 if (itv->card->v4l2_capabilities & V4L2_CAP_VIDEO_OUTPUT) {



  ivtv_call_hw(itv, IVTV_HW_SAA7127, video, s_stream, 1);
  ivtv_init_mpeg_decoder(itv);
 }


 if (!itv->has_cx23415)
  write_reg_sync(0x03, IVTV_REG_DMACONTROL);

 ivtv_s_std_enc(itv, itv->tuner_std);






 if (itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT) {
  ivtv_clear_irq_mask(itv, IVTV_IRQ_MASK_INIT | IVTV_IRQ_DEC_VSYNC);
  ivtv_set_osd_alpha(itv);
  ivtv_s_std_dec(itv, itv->tuner_std);
 } else {
  ivtv_clear_irq_mask(itv, IVTV_IRQ_MASK_INIT);
 }


 cx2341x_handler_setup(&itv->cxhdl);
 return 0;
}
