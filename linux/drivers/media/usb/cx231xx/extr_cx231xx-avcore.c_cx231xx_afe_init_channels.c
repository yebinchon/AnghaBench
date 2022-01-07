
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int dummy; } ;


 int ADC_CAL_ATEST_CH1 ;
 int ADC_CAL_ATEST_CH2 ;
 int ADC_CAL_ATEST_CH3 ;
 int ADC_COM_QUANT ;
 int ADC_DCSERVO_DEM_CH1 ;
 int ADC_DCSERVO_DEM_CH2 ;
 int ADC_DCSERVO_DEM_CH3 ;
 int ADC_FB_FRCRST_CH1 ;
 int ADC_FB_FRCRST_CH2 ;
 int ADC_FB_FRCRST_CH3 ;
 int ADC_NTF_PRECLMP_EN_CH1 ;
 int ADC_NTF_PRECLMP_EN_CH2 ;
 int ADC_NTF_PRECLMP_EN_CH3 ;
 int ADC_PWRDN_CLAMP_CH1 ;
 int ADC_PWRDN_CLAMP_CH2 ;
 int ADC_PWRDN_CLAMP_CH3 ;
 int ADC_QGAIN_RES_TRM_CH1 ;
 int ADC_QGAIN_RES_TRM_CH2 ;
 int ADC_QGAIN_RES_TRM_CH3 ;
 int AFE_DEVICE_ADDRESS ;
 int afe_write_byte (struct cx231xx*,int ,int) ;
 int cx231xx_reg_mask_write (struct cx231xx*,int ,int,int ,int,int,int) ;
 int msleep (int) ;

int cx231xx_afe_init_channels(struct cx231xx *dev)
{
 int status = 0;


 status = afe_write_byte(dev, ADC_PWRDN_CLAMP_CH1, 0x00);
 status = afe_write_byte(dev, ADC_PWRDN_CLAMP_CH2, 0x00);
 status = afe_write_byte(dev, ADC_PWRDN_CLAMP_CH3, 0x00);


 status = afe_write_byte(dev, ADC_COM_QUANT, 0x02);


 status = afe_write_byte(dev, ADC_FB_FRCRST_CH1, 0x17);
 status = afe_write_byte(dev, ADC_FB_FRCRST_CH2, 0x17);
 status = afe_write_byte(dev, ADC_FB_FRCRST_CH3, 0x17);


 status = afe_write_byte(dev, ADC_CAL_ATEST_CH1, 0x10);
 status = afe_write_byte(dev, ADC_CAL_ATEST_CH2, 0x10);
 status = afe_write_byte(dev, ADC_CAL_ATEST_CH3, 0x10);
 msleep(5);


 status = afe_write_byte(dev, ADC_FB_FRCRST_CH1, 0x07);
 status = afe_write_byte(dev, ADC_FB_FRCRST_CH2, 0x07);
 status = afe_write_byte(dev, ADC_FB_FRCRST_CH3, 0x07);


 status = afe_write_byte(dev, ADC_NTF_PRECLMP_EN_CH1, 0xf0);
 status = afe_write_byte(dev, ADC_NTF_PRECLMP_EN_CH2, 0xf0);
 status = afe_write_byte(dev, ADC_NTF_PRECLMP_EN_CH3, 0xf0);


 status = cx231xx_reg_mask_write(dev, AFE_DEVICE_ADDRESS, 8,
       ADC_QGAIN_RES_TRM_CH1, 3, 7, 0x00);
 status = cx231xx_reg_mask_write(dev, AFE_DEVICE_ADDRESS, 8,
       ADC_QGAIN_RES_TRM_CH2, 3, 7, 0x00);
 status = cx231xx_reg_mask_write(dev, AFE_DEVICE_ADDRESS, 8,
       ADC_QGAIN_RES_TRM_CH3, 3, 7, 0x00);


 status = afe_write_byte(dev, ADC_DCSERVO_DEM_CH1, 0x03);
 status = afe_write_byte(dev, ADC_DCSERVO_DEM_CH2, 0x03);
 status = afe_write_byte(dev, ADC_DCSERVO_DEM_CH3, 0x03);

 return status;
}
