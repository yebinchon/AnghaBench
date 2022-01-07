
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int tuner_type; } ;
struct cx231xx {int dev; TYPE_1__ board; } ;
typedef enum AUDIO_INPUT { ____Placeholder_AUDIO_INPUT } AUDIO_INPUT ;


 int AC97_CTL ;




 int AUD_CHAN_SRC_PARALLEL ;
 int AUD_IO_CTRL ;
 int BAND_OUT_SEL ;
 int CHIP_CTRL ;
 int DL_CTL ;
 int FLD_AC97_SRC_SEL ;
 int FLD_AC97_UP2X_BYPASS ;
 int FLD_AUD_CHAN1_SRC ;
 int FLD_AUD_CHAN2_SRC ;
 int FLD_AUD_CHAN3_SRC ;
 int FLD_BASEBAND_BYPASS_CTL ;
 int FLD_I2S_OUT_SRC ;
 int FLD_I2S_PORT_DIR ;
 int FLD_I2S_SRC_SEL ;
 int FLD_PARALLEL1_SRC_SEL ;
 int FLD_PARALLEL2_SRC_SEL ;
 int FLD_PATH1_AVC_THRESHOLD ;
 int FLD_PATH1_SC_THRESHOLD ;
 int FLD_SIF_EN ;
 int FLD_SRC3_CLK_SEL ;
 int FLD_SRC3_IN_SEL ;
 int FLD_SRC4_CLK_SEL ;
 int FLD_SRC4_IN_SEL ;
 int FLD_SRC5_CLK_SEL ;
 int FLD_SRC5_IN_SEL ;
 int FLD_SRC6_CLK_SEL ;
 int FLD_SRC6_IN_SEL ;
 int GENERAL_CTL ;
 int PATH1_CTL1 ;
 int PATH1_SC_CTL ;
 int PATH1_VOL_CTL ;


 int VID_BLK_I2C_ADDRESS ;
 int cx231xx_read_modify_write_i2c_dword (struct cx231xx*,int ,int ,int ,int) ;
 int cx231xx_set_field (int ,int) ;
 int dev_info (int ,char*) ;
 int restartAudioFirmware (struct cx231xx*) ;
 int stopAudioFirmware (struct cx231xx*) ;
 int vid_blk_read_byte (struct cx231xx*,int ,int*) ;
 int vid_blk_read_word (struct cx231xx*,int ,int*) ;
 int vid_blk_write_byte (struct cx231xx*,int ,int) ;
 int vid_blk_write_word (struct cx231xx*,int ,int) ;

int cx231xx_set_audio_decoder_input(struct cx231xx *dev,
        enum AUDIO_INPUT audio_input)
{
 u32 dwval;
 int status;
 u8 gen_ctrl;
 u32 value = 0;


 status = vid_blk_read_byte(dev, GENERAL_CTL, &gen_ctrl);
 gen_ctrl |= 1;
 status = vid_blk_write_byte(dev, GENERAL_CTL, gen_ctrl);

 switch (audio_input) {
 case 133:

  value = cx231xx_set_field(FLD_AUD_CHAN1_SRC,
       AUD_CHAN_SRC_PARALLEL);
  status = vid_blk_write_word(dev, AUD_IO_CTRL, value);




  status = vid_blk_read_word(dev, AC97_CTL, &dwval);

  status = vid_blk_write_word(dev, AC97_CTL,
        (dwval | FLD_AC97_UP2X_BYPASS));


  status = vid_blk_write_word(dev, BAND_OUT_SEL,
    cx231xx_set_field(FLD_SRC3_IN_SEL, 0x0) |
    cx231xx_set_field(FLD_SRC3_CLK_SEL, 0x0) |
    cx231xx_set_field(FLD_PARALLEL1_SRC_SEL, 0x0));



  status = vid_blk_write_word(dev, DL_CTL, 0x3000001);
  status = vid_blk_write_word(dev, PATH1_CTL1, 0x00063073);


  status = vid_blk_read_word(dev, PATH1_VOL_CTL, &dwval);
  status = vid_blk_write_word(dev, PATH1_VOL_CTL,
        (dwval | FLD_PATH1_AVC_THRESHOLD));


  status = vid_blk_read_word(dev, PATH1_SC_CTL, &dwval);
  status = vid_blk_write_word(dev, PATH1_SC_CTL,
        (dwval | FLD_PATH1_SC_THRESHOLD));
  break;

 case 130:
 default:
  status = stopAudioFirmware(dev);

  status = vid_blk_write_word(dev, BAND_OUT_SEL,
   cx231xx_set_field(FLD_SRC6_IN_SEL, 0x00) |
   cx231xx_set_field(FLD_SRC6_CLK_SEL, 0x01) |
   cx231xx_set_field(FLD_SRC5_IN_SEL, 0x00) |
   cx231xx_set_field(FLD_SRC5_CLK_SEL, 0x02) |
   cx231xx_set_field(FLD_SRC4_IN_SEL, 0x02) |
   cx231xx_set_field(FLD_SRC4_CLK_SEL, 0x03) |
   cx231xx_set_field(FLD_SRC3_IN_SEL, 0x00) |
   cx231xx_set_field(FLD_SRC3_CLK_SEL, 0x00) |
   cx231xx_set_field(FLD_BASEBAND_BYPASS_CTL, 0x00) |
   cx231xx_set_field(FLD_AC97_SRC_SEL, 0x03) |
   cx231xx_set_field(FLD_I2S_SRC_SEL, 0x00) |
   cx231xx_set_field(FLD_PARALLEL2_SRC_SEL, 0x02) |
   cx231xx_set_field(FLD_PARALLEL1_SRC_SEL, 0x01));


  status = vid_blk_write_word(dev, AUD_IO_CTRL,
   cx231xx_set_field(FLD_I2S_PORT_DIR, 0x00) |
   cx231xx_set_field(FLD_I2S_OUT_SRC, 0x00) |
   cx231xx_set_field(FLD_AUD_CHAN3_SRC, 0x00) |
   cx231xx_set_field(FLD_AUD_CHAN2_SRC, 0x00) |
   cx231xx_set_field(FLD_AUD_CHAN1_SRC, 0x03));

  status = vid_blk_write_word(dev, PATH1_CTL1, 0x1F063870);


  status = vid_blk_write_word(dev, PATH1_CTL1, 0x00063870);

  status = restartAudioFirmware(dev);

  switch (dev->board.tuner_type) {
  case 128:

   status = cx231xx_read_modify_write_i2c_dword(dev,
     VID_BLK_I2C_ADDRESS,
     CHIP_CTRL,
     FLD_SIF_EN,
     cx231xx_set_field(FLD_SIF_EN, 1));
   break;
  case 129:

   status = cx231xx_read_modify_write_i2c_dword(dev,
     VID_BLK_I2C_ADDRESS,
     CHIP_CTRL,
     FLD_SIF_EN,
     cx231xx_set_field(FLD_SIF_EN, 0));
   break;
  default:



   dev_info(dev->dev,
     "Unknown tuner type configuring SIF");
   break;
  }
  break;

 case 131:




  break;

 case 132:
  status = vid_blk_write_word(dev, PATH1_CTL1, 0x1F011012);
  break;
 }


 status = vid_blk_read_byte(dev, GENERAL_CTL, &gen_ctrl);
 gen_ctrl &= ~1;
 status = vid_blk_write_byte(dev, GENERAL_CTL, gen_ctrl);

 return status;
}
