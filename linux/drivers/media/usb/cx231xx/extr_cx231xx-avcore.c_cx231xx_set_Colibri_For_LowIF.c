
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct cx231xx {int norm; int dev; int active_mode; } ;


 int AFE_MODE_LOW_IF ;
 int PWR_CTL_EN ;
 int VRT_SET_REGISTER ;
 int cx231xx_Get_Colibri_CarrierOffset (int,int) ;
 int cx231xx_afe_set_mode (struct cx231xx*,int ) ;
 int cx231xx_dif_configure_C2HH_for_low_IF (struct cx231xx*,int ,int,int) ;
 int cx231xx_set_DIF_bandpass (struct cx231xx*,int,scalar_t__,int) ;
 int cx231xx_write_ctrl_reg (struct cx231xx*,int ,int ,scalar_t__*,int) ;
 int dev_dbg (int ,char*,...) ;

void cx231xx_set_Colibri_For_LowIF(struct cx231xx *dev, u32 if_freq,
   u8 spectral_invert, u32 mode)
{
 u32 colibri_carrier_offset = 0;
 u32 func_mode = 0x01;
 u32 standard = 0;
 u8 value[4] = { 0, 0, 0, 0 };

 dev_dbg(dev->dev, "Enter cx231xx_set_Colibri_For_LowIF()\n");
 value[0] = (u8) 0x6F;
 value[1] = (u8) 0x6F;
 value[2] = (u8) 0x6F;
 value[3] = (u8) 0x6F;
 cx231xx_write_ctrl_reg(dev, VRT_SET_REGISTER,
     PWR_CTL_EN, value, 4);


 cx231xx_afe_set_mode(dev, AFE_MODE_LOW_IF);


 standard = dev->norm;
 cx231xx_dif_configure_C2HH_for_low_IF(dev, dev->active_mode,
             func_mode, standard);


 colibri_carrier_offset = cx231xx_Get_Colibri_CarrierOffset(mode,
           standard);

 dev_dbg(dev->dev, "colibri_carrier_offset=%d, standard=0x%x\n",
       colibri_carrier_offset, standard);


 cx231xx_set_DIF_bandpass(dev, (if_freq+colibri_carrier_offset),
     spectral_invert, mode);
}
