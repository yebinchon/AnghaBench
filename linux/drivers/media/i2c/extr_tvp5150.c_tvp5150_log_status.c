
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dev; } ;


 int TVP5150_ACT_VD_CROP_STP_LSB ;
 int TVP5150_ACT_VD_CROP_STP_MSB ;
 int TVP5150_ACT_VD_CROP_ST_LSB ;
 int TVP5150_ACT_VD_CROP_ST_MSB ;
 int TVP5150_ANAL_CHL_CTL ;
 int TVP5150_AUTOSW_MSK ;
 int TVP5150_BRIGHT_CTL ;
 int TVP5150_CB_GAIN_FACT ;
 int TVP5150_CC_DATA_END ;
 int TVP5150_CC_DATA_INI ;
 int TVP5150_CHROMA_PROC_CTL_1 ;
 int TVP5150_CHROMA_PROC_CTL_2 ;
 int TVP5150_COLOR_KIL_THSH_CTL ;
 int TVP5150_CONF_SHARED_PIN ;
 int TVP5150_CONTRAST_CTL ;
 int TVP5150_CR_GAIN_FACTOR ;
 int TVP5150_DATA_RATE_SEL ;
 int TVP5150_FIFO_INT_THRESHOLD ;
 int TVP5150_FIFO_OUT_CTRL ;
 int TVP5150_FIFO_RESET ;
 int TVP5150_FIFO_WORD_COUNT ;
 int TVP5150_FULL_FIELD_ENA ;
 int TVP5150_FULL_FIELD_MODE_REG ;
 int TVP5150_GENLOCK ;
 int TVP5150_HORIZ_SYNC_START ;
 int TVP5150_HUE_CTL ;
 int TVP5150_INTT_CONFIG_REG_B ;
 int TVP5150_INT_ACTIVE_REG_B ;
 int TVP5150_INT_CONF ;
 int TVP5150_INT_ENABLE_REG_A ;
 int TVP5150_INT_ENABLE_REG_B ;
 int TVP5150_INT_RESET_REG_B ;
 int TVP5150_INT_STATUS_REG_A ;
 int TVP5150_INT_STATUS_REG_B ;
 int TVP5150_LINE_MODE_END ;
 int TVP5150_LINE_MODE_INI ;
 int TVP5150_LINE_NUMBER_INT ;
 int TVP5150_LSB_DEV_ID ;
 int TVP5150_LUMA_PROC_CTL_1 ;
 int TVP5150_LUMA_PROC_CTL_2 ;
 int TVP5150_LUMA_PROC_CTL_3 ;
 int TVP5150_MACROVISION_OFF_CTR ;
 int TVP5150_MACROVISION_ON_CTR ;
 int TVP5150_MISC_CTL ;
 int TVP5150_MSB_DEV_ID ;
 int TVP5150_OP_MODE_CTL ;
 int TVP5150_PIX_ALIGN_REG_HIGH ;
 int TVP5150_PIX_ALIGN_REG_LOW ;
 int TVP5150_REV_SELECT ;
 int TVP5150_ROM_MAJOR_VER ;
 int TVP5150_ROM_MINOR_VER ;
 int TVP5150_SATURATION_CTL ;
 int TVP5150_STATUS_REG_1 ;
 int TVP5150_STATUS_REG_2 ;
 int TVP5150_STATUS_REG_3 ;
 int TVP5150_STATUS_REG_4 ;
 int TVP5150_STATUS_REG_5 ;
 int TVP5150_TELETEXT_FIL1_END ;
 int TVP5150_TELETEXT_FIL1_INI ;
 int TVP5150_TELETEXT_FIL2_END ;
 int TVP5150_TELETEXT_FIL2_INI ;
 int TVP5150_TELETEXT_FIL_ENA ;
 int TVP5150_VDP_STATUS_REG ;
 int TVP5150_VD_IN_SRC_SEL_1 ;
 int TVP5150_VERT_BLANKING_START ;
 int TVP5150_VERT_BLANKING_STOP ;
 int TVP5150_VERT_LN_COUNT_LSB ;
 int TVP5150_VERT_LN_COUNT_MSB ;
 int TVP5150_VIDEO_STD ;
 int TVP5150_VITC_DATA_END ;
 int TVP5150_VITC_DATA_INI ;
 int TVP5150_VPS_DATA_END ;
 int TVP5150_VPS_DATA_INI ;
 int TVP5150_WSS_DATA_END ;
 int TVP5150_WSS_DATA_INI ;
 int dprintk0 (int ,char*,int,...) ;
 int dump_reg_range (struct v4l2_subdev*,char*,int ,int ,int) ;
 int tvp5150_read (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int tvp5150_log_status(struct v4l2_subdev *sd)
{
 dprintk0(sd->dev, "tvp5150: Video input source selection #1 = 0x%02x\n",
  tvp5150_read(sd, TVP5150_VD_IN_SRC_SEL_1));
 dprintk0(sd->dev, "tvp5150: Analog channel controls = 0x%02x\n",
  tvp5150_read(sd, TVP5150_ANAL_CHL_CTL));
 dprintk0(sd->dev, "tvp5150: Operation mode controls = 0x%02x\n",
  tvp5150_read(sd, TVP5150_OP_MODE_CTL));
 dprintk0(sd->dev, "tvp5150: Miscellaneous controls = 0x%02x\n",
  tvp5150_read(sd, TVP5150_MISC_CTL));
 dprintk0(sd->dev, "tvp5150: Autoswitch mask= 0x%02x\n",
  tvp5150_read(sd, TVP5150_AUTOSW_MSK));
 dprintk0(sd->dev, "tvp5150: Color killer threshold control = 0x%02x\n",
  tvp5150_read(sd, TVP5150_COLOR_KIL_THSH_CTL));
 dprintk0(sd->dev, "tvp5150: Luminance processing controls #1 #2 and #3 = %02x %02x %02x\n",
  tvp5150_read(sd, TVP5150_LUMA_PROC_CTL_1),
  tvp5150_read(sd, TVP5150_LUMA_PROC_CTL_2),
  tvp5150_read(sd, TVP5150_LUMA_PROC_CTL_3));
 dprintk0(sd->dev, "tvp5150: Brightness control = 0x%02x\n",
  tvp5150_read(sd, TVP5150_BRIGHT_CTL));
 dprintk0(sd->dev, "tvp5150: Color saturation control = 0x%02x\n",
  tvp5150_read(sd, TVP5150_SATURATION_CTL));
 dprintk0(sd->dev, "tvp5150: Hue control = 0x%02x\n",
  tvp5150_read(sd, TVP5150_HUE_CTL));
 dprintk0(sd->dev, "tvp5150: Contrast control = 0x%02x\n",
  tvp5150_read(sd, TVP5150_CONTRAST_CTL));
 dprintk0(sd->dev, "tvp5150: Outputs and data rates select = 0x%02x\n",
  tvp5150_read(sd, TVP5150_DATA_RATE_SEL));
 dprintk0(sd->dev, "tvp5150: Configuration shared pins = 0x%02x\n",
  tvp5150_read(sd, TVP5150_CONF_SHARED_PIN));
 dprintk0(sd->dev, "tvp5150: Active video cropping start = 0x%02x%02x\n",
  tvp5150_read(sd, TVP5150_ACT_VD_CROP_ST_MSB),
  tvp5150_read(sd, TVP5150_ACT_VD_CROP_ST_LSB));
 dprintk0(sd->dev, "tvp5150: Active video cropping stop  = 0x%02x%02x\n",
  tvp5150_read(sd, TVP5150_ACT_VD_CROP_STP_MSB),
  tvp5150_read(sd, TVP5150_ACT_VD_CROP_STP_LSB));
 dprintk0(sd->dev, "tvp5150: Genlock/RTC = 0x%02x\n",
  tvp5150_read(sd, TVP5150_GENLOCK));
 dprintk0(sd->dev, "tvp5150: Horizontal sync start = 0x%02x\n",
  tvp5150_read(sd, TVP5150_HORIZ_SYNC_START));
 dprintk0(sd->dev, "tvp5150: Vertical blanking start = 0x%02x\n",
  tvp5150_read(sd, TVP5150_VERT_BLANKING_START));
 dprintk0(sd->dev, "tvp5150: Vertical blanking stop = 0x%02x\n",
  tvp5150_read(sd, TVP5150_VERT_BLANKING_STOP));
 dprintk0(sd->dev, "tvp5150: Chrominance processing control #1 and #2 = %02x %02x\n",
  tvp5150_read(sd, TVP5150_CHROMA_PROC_CTL_1),
  tvp5150_read(sd, TVP5150_CHROMA_PROC_CTL_2));
 dprintk0(sd->dev, "tvp5150: Interrupt reset register B = 0x%02x\n",
  tvp5150_read(sd, TVP5150_INT_RESET_REG_B));
 dprintk0(sd->dev, "tvp5150: Interrupt enable register B = 0x%02x\n",
  tvp5150_read(sd, TVP5150_INT_ENABLE_REG_B));
 dprintk0(sd->dev, "tvp5150: Interrupt configuration register B = 0x%02x\n",
  tvp5150_read(sd, TVP5150_INTT_CONFIG_REG_B));
 dprintk0(sd->dev, "tvp5150: Video standard = 0x%02x\n",
  tvp5150_read(sd, TVP5150_VIDEO_STD));
 dprintk0(sd->dev, "tvp5150: Chroma gain factor: Cb=0x%02x Cr=0x%02x\n",
  tvp5150_read(sd, TVP5150_CB_GAIN_FACT),
  tvp5150_read(sd, TVP5150_CR_GAIN_FACTOR));
 dprintk0(sd->dev, "tvp5150: Macrovision on counter = 0x%02x\n",
  tvp5150_read(sd, TVP5150_MACROVISION_ON_CTR));
 dprintk0(sd->dev, "tvp5150: Macrovision off counter = 0x%02x\n",
  tvp5150_read(sd, TVP5150_MACROVISION_OFF_CTR));
 dprintk0(sd->dev, "tvp5150: ITU-R BT.656.%d timing(TVP5150AM1 only)\n",
  (tvp5150_read(sd, TVP5150_REV_SELECT) & 1) ? 3 : 4);
 dprintk0(sd->dev, "tvp5150: Device ID = %02x%02x\n",
  tvp5150_read(sd, TVP5150_MSB_DEV_ID),
  tvp5150_read(sd, TVP5150_LSB_DEV_ID));
 dprintk0(sd->dev, "tvp5150: ROM version = (hex) %02x.%02x\n",
  tvp5150_read(sd, TVP5150_ROM_MAJOR_VER),
  tvp5150_read(sd, TVP5150_ROM_MINOR_VER));
 dprintk0(sd->dev, "tvp5150: Vertical line count = 0x%02x%02x\n",
  tvp5150_read(sd, TVP5150_VERT_LN_COUNT_MSB),
  tvp5150_read(sd, TVP5150_VERT_LN_COUNT_LSB));
 dprintk0(sd->dev, "tvp5150: Interrupt status register B = 0x%02x\n",
  tvp5150_read(sd, TVP5150_INT_STATUS_REG_B));
 dprintk0(sd->dev, "tvp5150: Interrupt active register B = 0x%02x\n",
  tvp5150_read(sd, TVP5150_INT_ACTIVE_REG_B));
 dprintk0(sd->dev, "tvp5150: Status regs #1 to #5 = %02x %02x %02x %02x %02x\n",
  tvp5150_read(sd, TVP5150_STATUS_REG_1),
  tvp5150_read(sd, TVP5150_STATUS_REG_2),
  tvp5150_read(sd, TVP5150_STATUS_REG_3),
  tvp5150_read(sd, TVP5150_STATUS_REG_4),
  tvp5150_read(sd, TVP5150_STATUS_REG_5));

 dump_reg_range(sd, "Teletext filter 1", TVP5150_TELETEXT_FIL1_INI,
   TVP5150_TELETEXT_FIL1_END, 8);
 dump_reg_range(sd, "Teletext filter 2", TVP5150_TELETEXT_FIL2_INI,
   TVP5150_TELETEXT_FIL2_END, 8);

 dprintk0(sd->dev, "tvp5150: Teletext filter enable = 0x%02x\n",
  tvp5150_read(sd, TVP5150_TELETEXT_FIL_ENA));
 dprintk0(sd->dev, "tvp5150: Interrupt status register A = 0x%02x\n",
  tvp5150_read(sd, TVP5150_INT_STATUS_REG_A));
 dprintk0(sd->dev, "tvp5150: Interrupt enable register A = 0x%02x\n",
  tvp5150_read(sd, TVP5150_INT_ENABLE_REG_A));
 dprintk0(sd->dev, "tvp5150: Interrupt configuration = 0x%02x\n",
  tvp5150_read(sd, TVP5150_INT_CONF));
 dprintk0(sd->dev, "tvp5150: VDP status register = 0x%02x\n",
  tvp5150_read(sd, TVP5150_VDP_STATUS_REG));
 dprintk0(sd->dev, "tvp5150: FIFO word count = 0x%02x\n",
  tvp5150_read(sd, TVP5150_FIFO_WORD_COUNT));
 dprintk0(sd->dev, "tvp5150: FIFO interrupt threshold = 0x%02x\n",
  tvp5150_read(sd, TVP5150_FIFO_INT_THRESHOLD));
 dprintk0(sd->dev, "tvp5150: FIFO reset = 0x%02x\n",
  tvp5150_read(sd, TVP5150_FIFO_RESET));
 dprintk0(sd->dev, "tvp5150: Line number interrupt = 0x%02x\n",
  tvp5150_read(sd, TVP5150_LINE_NUMBER_INT));
 dprintk0(sd->dev, "tvp5150: Pixel alignment register = 0x%02x%02x\n",
  tvp5150_read(sd, TVP5150_PIX_ALIGN_REG_HIGH),
  tvp5150_read(sd, TVP5150_PIX_ALIGN_REG_LOW));
 dprintk0(sd->dev, "tvp5150: FIFO output control = 0x%02x\n",
  tvp5150_read(sd, TVP5150_FIFO_OUT_CTRL));
 dprintk0(sd->dev, "tvp5150: Full field enable = 0x%02x\n",
  tvp5150_read(sd, TVP5150_FULL_FIELD_ENA));
 dprintk0(sd->dev, "tvp5150: Full field mode register = 0x%02x\n",
  tvp5150_read(sd, TVP5150_FULL_FIELD_MODE_REG));

 dump_reg_range(sd, "CC   data", TVP5150_CC_DATA_INI,
   TVP5150_CC_DATA_END, 8);

 dump_reg_range(sd, "WSS  data", TVP5150_WSS_DATA_INI,
   TVP5150_WSS_DATA_END, 8);

 dump_reg_range(sd, "VPS  data", TVP5150_VPS_DATA_INI,
   TVP5150_VPS_DATA_END, 8);

 dump_reg_range(sd, "VITC data", TVP5150_VITC_DATA_INI,
   TVP5150_VITC_DATA_END, 10);

 dump_reg_range(sd, "Line mode", TVP5150_LINE_MODE_INI,
   TVP5150_LINE_MODE_END, 8);
 return 0;
}
