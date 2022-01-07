
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct saa7146_standard {int dummy; } ;
struct TYPE_7__ {int num; } ;
struct av7110 {int analog_tuner_flags; TYPE_3__* dev; TYPE_2__ dvb_adapter; int adac_type; } ;
struct TYPE_8__ {TYPE_1__* pci; } ;
struct TYPE_6__ {int subsystem_vendor; int subsystem_device; } ;


 int ANALOG_TUNER_STV0297 ;
 int ANALOG_TUNER_VES1820 ;
 int DD1_INIT ;
 int DD1_STREAM_B ;
 int DVB_ADAC_MSP34x0 ;
 int DVB_ADAC_MSP34x5 ;
 int ENODEV ;
 int MASK_09 ;
 int MASK_10 ;
 int MASK_25 ;
 int MASK_26 ;
 int MC2 ;
 int MSP_RD_DSP ;
 int MSP_WR_DEM ;
 int MSP_WR_DSP ;
 int SAA7146_GPIO_OUTLO ;
 int dprintk (int,char*,...) ;
 int dvb_standard ;
 int i2c_writereg (struct av7110*,int,int,int) ;
 int memcpy (int ,int ,int) ;
 int msleep (int) ;
 int msp_readreg (struct av7110*,int ,int,int *) ;
 int msp_writereg (struct av7110*,int ,int,int) ;
 int pr_info (char*,...) ;
 int* saa7113_init_regs ;
 int saa7146_setgpio (TYPE_3__*,int,int ) ;
 int saa7146_write (TYPE_3__*,int ,int) ;
 int standard ;
 scalar_t__ ves1820_writereg (TYPE_3__*,int,int,int) ;

int av7110_init_analog_module(struct av7110 *av7110)
{
 u16 version1, version2;

 if (i2c_writereg(av7110, 0x80, 0x0, 0x80) == 1 &&
     i2c_writereg(av7110, 0x80, 0x0, 0) == 1) {
  pr_info("DVB-C analog module @ card %d detected, initializing MSP3400\n",
   av7110->dvb_adapter.num);
  av7110->adac_type = DVB_ADAC_MSP34x0;
 } else if (i2c_writereg(av7110, 0x84, 0x0, 0x80) == 1 &&
     i2c_writereg(av7110, 0x84, 0x0, 0) == 1) {
  pr_info("DVB-C analog module @ card %d detected, initializing MSP3415\n",
   av7110->dvb_adapter.num);
  av7110->adac_type = DVB_ADAC_MSP34x5;
 } else
  return -ENODEV;

 msleep(100);
 msp_readreg(av7110, MSP_RD_DSP, 0x001e, &version1);
 msp_readreg(av7110, MSP_RD_DSP, 0x001f, &version2);
 dprintk(1, "dvb-ttpci: @ card %d MSP34xx version 0x%04x 0x%04x\n",
  av7110->dvb_adapter.num, version1, version2);
 msp_writereg(av7110, MSP_WR_DSP, 0x0013, 0x0c00);
 msp_writereg(av7110, MSP_WR_DSP, 0x0000, 0x7f00);
 msp_writereg(av7110, MSP_WR_DSP, 0x0008, 0x0220);
 msp_writereg(av7110, MSP_WR_DSP, 0x0009, 0x0220);
 msp_writereg(av7110, MSP_WR_DSP, 0x0004, 0x7f00);
 msp_writereg(av7110, MSP_WR_DSP, 0x000a, 0x0220);
 msp_writereg(av7110, MSP_WR_DSP, 0x0007, 0x7f00);
 msp_writereg(av7110, MSP_WR_DSP, 0x000d, 0x1900);

 if (i2c_writereg(av7110, 0x48, 0x01, 0x00)!=1) {
  pr_info("saa7113 not accessible\n");
 } else {
  u8 *i = saa7113_init_regs;

  if ((av7110->dev->pci->subsystem_vendor == 0x110a) && (av7110->dev->pci->subsystem_device == 0x0000)) {

   av7110->analog_tuner_flags |= ANALOG_TUNER_VES1820;
  } else if ((av7110->dev->pci->subsystem_vendor == 0x13c2) && (av7110->dev->pci->subsystem_device == 0x0002)) {

   av7110->analog_tuner_flags |= ANALOG_TUNER_VES1820;
  } else if ((av7110->dev->pci->subsystem_vendor == 0x13c2) && (av7110->dev->pci->subsystem_device == 0x000A)) {

   av7110->analog_tuner_flags |= ANALOG_TUNER_STV0297;
  }


  if (av7110->analog_tuner_flags & ANALOG_TUNER_VES1820) {
   if (ves1820_writereg(av7110->dev, 0x09, 0x0f, 0x20))
    dprintk(1, "setting band in demodulator failed\n");
  } else if (av7110->analog_tuner_flags & ANALOG_TUNER_STV0297) {
   saa7146_setgpio(av7110->dev, 1, SAA7146_GPIO_OUTLO);
   saa7146_setgpio(av7110->dev, 3, SAA7146_GPIO_OUTLO);
  }


  while (*i != 0xff) {
   if (i2c_writereg(av7110, 0x48, i[0], i[1]) != 1) {
    dprintk(1, "saa7113 initialization failed @ card %d", av7110->dvb_adapter.num);
    break;
   }
   i += 2;
  }

  msp_writereg(av7110, MSP_WR_DEM, 0x00bb, 0x02d0);
  msp_writereg(av7110, MSP_WR_DEM, 0x0001, 3);
  msp_writereg(av7110, MSP_WR_DEM, 0x0001, 18);
  msp_writereg(av7110, MSP_WR_DEM, 0x0001, 27);
  msp_writereg(av7110, MSP_WR_DEM, 0x0001, 48);
  msp_writereg(av7110, MSP_WR_DEM, 0x0001, 66);
  msp_writereg(av7110, MSP_WR_DEM, 0x0001, 72);
  msp_writereg(av7110, MSP_WR_DEM, 0x0005, 4);
  msp_writereg(av7110, MSP_WR_DEM, 0x0005, 64);
  msp_writereg(av7110, MSP_WR_DEM, 0x0005, 0);
  msp_writereg(av7110, MSP_WR_DEM, 0x0005, 3);
  msp_writereg(av7110, MSP_WR_DEM, 0x0005, 18);
  msp_writereg(av7110, MSP_WR_DEM, 0x0005, 27);
  msp_writereg(av7110, MSP_WR_DEM, 0x0005, 48);
  msp_writereg(av7110, MSP_WR_DEM, 0x0005, 66);
  msp_writereg(av7110, MSP_WR_DEM, 0x0005, 72);
  msp_writereg(av7110, MSP_WR_DEM, 0x0083, 0xa000);
  msp_writereg(av7110, MSP_WR_DEM, 0x0093, 0x00aa);
  msp_writereg(av7110, MSP_WR_DEM, 0x009b, 0x04fc);
  msp_writereg(av7110, MSP_WR_DEM, 0x00a3, 0x038e);
  msp_writereg(av7110, MSP_WR_DEM, 0x00ab, 0x04c6);
  msp_writereg(av7110, MSP_WR_DEM, 0x0056, 0);
 }

 memcpy(standard, dvb_standard, sizeof(struct saa7146_standard) * 2);

 saa7146_write(av7110->dev, DD1_STREAM_B, 0x00000000);
 saa7146_write(av7110->dev, DD1_INIT, 0x03000700);
 saa7146_write(av7110->dev, MC2, (MASK_09 | MASK_25 | MASK_10 | MASK_26));

 return 0;
}
