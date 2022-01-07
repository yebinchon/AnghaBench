
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct adv7183 {int hdl; } ;


 int ADV7183_ADC_CTRL ;
 int ADV7183_ADI_CTRL ;
 int ADV7183_ADI_CTRL_2 ;
 int ADV7183_AGC_MODE_CTRL ;
 int ADV7183_ANAL_CLAMP_CTRL ;
 int ADV7183_AUTO_DET_EN ;
 int ADV7183_BRIGHTNESS ;
 int ADV7183_CHRO_GAIN_CTRL_1 ;
 int ADV7183_CHRO_GAIN_CTRL_2 ;
 int ADV7183_COMB_FILT_CTRL ;
 int ADV7183_CONTRAST ;
 int ADV7183_DEF_C ;
 int ADV7183_DEF_Y ;
 int ADV7183_DIGI_CLAMP_CTRL_1 ;
 int ADV7183_DRIVE_STR ;
 int ADV7183_EXT_OUT_CTRL ;
 int ADV7183_HS_POS_CTRL_1 ;
 int ADV7183_HS_POS_CTRL_2 ;
 int ADV7183_HS_POS_CTRL_3 ;
 int ADV7183_HUE ;
 int ADV7183_IDENT ;
 int ADV7183_IN_CTRL ;
 int ADV7183_LUMA_GAIN_CTRL_1 ;
 int ADV7183_LUMA_GAIN_CTRL_2 ;
 int ADV7183_MISC_GAIN_CTRL ;
 int ADV7183_OUT_CTRL ;
 int ADV7183_PIX_DELAY_CTRL ;
 int ADV7183_POLARITY ;
 int ADV7183_POW_MANAGE ;
 int ADV7183_SD_OFFSET_CB ;
 int ADV7183_SD_OFFSET_CR ;
 int ADV7183_SD_SATURATION_CB ;
 int ADV7183_SD_SATURATION_CR ;
 int ADV7183_SHAP_FILT_CTRL ;
 int ADV7183_SHAP_FILT_CTRL_2 ;
 int ADV7183_STATUS_1 ;
 int ADV7183_STATUS_2 ;
 int ADV7183_STATUS_3 ;
 int ADV7183_VD_SEL ;
 int ADV7183_VS_FIELD_CTRL_1 ;
 int ADV7183_VS_FIELD_CTRL_2 ;
 int ADV7183_VS_FIELD_CTRL_3 ;
 int adv7183_read (struct v4l2_subdev*,int ) ;
 struct adv7183* to_adv7183 (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;
 int v4l2_info (struct v4l2_subdev*,char*,int ,...) ;

__attribute__((used)) static int adv7183_log_status(struct v4l2_subdev *sd)
{
 struct adv7183 *decoder = to_adv7183(sd);

 v4l2_info(sd, "adv7183: Input control = 0x%02x\n",
   adv7183_read(sd, ADV7183_IN_CTRL));
 v4l2_info(sd, "adv7183: Video selection = 0x%02x\n",
   adv7183_read(sd, ADV7183_VD_SEL));
 v4l2_info(sd, "adv7183: Output control = 0x%02x\n",
   adv7183_read(sd, ADV7183_OUT_CTRL));
 v4l2_info(sd, "adv7183: Extended output control = 0x%02x\n",
   adv7183_read(sd, ADV7183_EXT_OUT_CTRL));
 v4l2_info(sd, "adv7183: Autodetect enable = 0x%02x\n",
   adv7183_read(sd, ADV7183_AUTO_DET_EN));
 v4l2_info(sd, "adv7183: Contrast = 0x%02x\n",
   adv7183_read(sd, ADV7183_CONTRAST));
 v4l2_info(sd, "adv7183: Brightness = 0x%02x\n",
   adv7183_read(sd, ADV7183_BRIGHTNESS));
 v4l2_info(sd, "adv7183: Hue = 0x%02x\n",
   adv7183_read(sd, ADV7183_HUE));
 v4l2_info(sd, "adv7183: Default value Y = 0x%02x\n",
   adv7183_read(sd, ADV7183_DEF_Y));
 v4l2_info(sd, "adv7183: Default value C = 0x%02x\n",
   adv7183_read(sd, ADV7183_DEF_C));
 v4l2_info(sd, "adv7183: ADI control = 0x%02x\n",
   adv7183_read(sd, ADV7183_ADI_CTRL));
 v4l2_info(sd, "adv7183: Power Management = 0x%02x\n",
   adv7183_read(sd, ADV7183_POW_MANAGE));
 v4l2_info(sd, "adv7183: Status 1 2 and 3 = 0x%02x 0x%02x 0x%02x\n",
   adv7183_read(sd, ADV7183_STATUS_1),
   adv7183_read(sd, ADV7183_STATUS_2),
   adv7183_read(sd, ADV7183_STATUS_3));
 v4l2_info(sd, "adv7183: Ident = 0x%02x\n",
   adv7183_read(sd, ADV7183_IDENT));
 v4l2_info(sd, "adv7183: Analog clamp control = 0x%02x\n",
   adv7183_read(sd, ADV7183_ANAL_CLAMP_CTRL));
 v4l2_info(sd, "adv7183: Digital clamp control 1 = 0x%02x\n",
   adv7183_read(sd, ADV7183_DIGI_CLAMP_CTRL_1));
 v4l2_info(sd, "adv7183: Shaping filter control 1 and 2 = 0x%02x 0x%02x\n",
   adv7183_read(sd, ADV7183_SHAP_FILT_CTRL),
   adv7183_read(sd, ADV7183_SHAP_FILT_CTRL_2));
 v4l2_info(sd, "adv7183: Comb filter control = 0x%02x\n",
   adv7183_read(sd, ADV7183_COMB_FILT_CTRL));
 v4l2_info(sd, "adv7183: ADI control 2 = 0x%02x\n",
   adv7183_read(sd, ADV7183_ADI_CTRL_2));
 v4l2_info(sd, "adv7183: Pixel delay control = 0x%02x\n",
   adv7183_read(sd, ADV7183_PIX_DELAY_CTRL));
 v4l2_info(sd, "adv7183: Misc gain control = 0x%02x\n",
   adv7183_read(sd, ADV7183_MISC_GAIN_CTRL));
 v4l2_info(sd, "adv7183: AGC mode control = 0x%02x\n",
   adv7183_read(sd, ADV7183_AGC_MODE_CTRL));
 v4l2_info(sd, "adv7183: Chroma gain control 1 and 2 = 0x%02x 0x%02x\n",
   adv7183_read(sd, ADV7183_CHRO_GAIN_CTRL_1),
   adv7183_read(sd, ADV7183_CHRO_GAIN_CTRL_2));
 v4l2_info(sd, "adv7183: Luma gain control 1 and 2 = 0x%02x 0x%02x\n",
   adv7183_read(sd, ADV7183_LUMA_GAIN_CTRL_1),
   adv7183_read(sd, ADV7183_LUMA_GAIN_CTRL_2));
 v4l2_info(sd, "adv7183: Vsync field control 1 2 and 3 = 0x%02x 0x%02x 0x%02x\n",
   adv7183_read(sd, ADV7183_VS_FIELD_CTRL_1),
   adv7183_read(sd, ADV7183_VS_FIELD_CTRL_2),
   adv7183_read(sd, ADV7183_VS_FIELD_CTRL_3));
 v4l2_info(sd, "adv7183: Hsync position control 1 2 and 3 = 0x%02x 0x%02x 0x%02x\n",
   adv7183_read(sd, ADV7183_HS_POS_CTRL_1),
   adv7183_read(sd, ADV7183_HS_POS_CTRL_2),
   adv7183_read(sd, ADV7183_HS_POS_CTRL_3));
 v4l2_info(sd, "adv7183: Polarity = 0x%02x\n",
   adv7183_read(sd, ADV7183_POLARITY));
 v4l2_info(sd, "adv7183: ADC control = 0x%02x\n",
   adv7183_read(sd, ADV7183_ADC_CTRL));
 v4l2_info(sd, "adv7183: SD offset Cb and Cr = 0x%02x 0x%02x\n",
   adv7183_read(sd, ADV7183_SD_OFFSET_CB),
   adv7183_read(sd, ADV7183_SD_OFFSET_CR));
 v4l2_info(sd, "adv7183: SD saturation Cb and Cr = 0x%02x 0x%02x\n",
   adv7183_read(sd, ADV7183_SD_SATURATION_CB),
   adv7183_read(sd, ADV7183_SD_SATURATION_CR));
 v4l2_info(sd, "adv7183: Drive strength = 0x%02x\n",
   adv7183_read(sd, ADV7183_DRIVE_STR));
 v4l2_ctrl_handler_log_status(&decoder->hdl, sd->name);
 return 0;
}
