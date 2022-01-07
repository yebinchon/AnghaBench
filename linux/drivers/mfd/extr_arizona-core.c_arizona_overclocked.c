
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int type; int dev; int regmap; } ;
typedef int irqreturn_t ;


 unsigned int ARIZONA_ADC_OVERCLOCKED_STS ;
 unsigned int ARIZONA_ADSP2_1_OVERCLOCKED_STS ;
 unsigned int ARIZONA_AIF1_SYNC_OVERCLOCKED_STS ;
 unsigned int ARIZONA_AIF2_SYNC_OVERCLOCKED_STS ;
 unsigned int ARIZONA_AIF3_SYNC_OVERCLOCKED_STS ;
 unsigned int ARIZONA_ASRC_ASYNC_SYS_OVERCLOCKED_STS ;
 unsigned int ARIZONA_ASRC_ASYNC_WARP_OVERCLOCKED_STS ;
 unsigned int ARIZONA_ASRC_SYNC_SYS_OVERCLOCKED_STS ;
 unsigned int ARIZONA_ASRC_SYNC_WARP_OVERCLOCKED_STS ;
 unsigned int ARIZONA_DAC_SYS_OVERCLOCKED_STS ;
 unsigned int ARIZONA_DAC_WARP_OVERCLOCKED_STS ;
 unsigned int ARIZONA_FX_CORE_OVERCLOCKED_STS ;
 int ARIZONA_INTERRUPT_RAW_STATUS_6 ;
 unsigned int ARIZONA_ISRC1_OVERCLOCKED_STS ;
 unsigned int ARIZONA_ISRC2_OVERCLOCKED_STS ;
 unsigned int ARIZONA_ISRC3_OVERCLOCKED_STS ;
 unsigned int ARIZONA_MIXER_OVERCLOCKED_STS ;
 unsigned int ARIZONA_PAD_CTRL_OVERCLOCKED_STS ;
 unsigned int ARIZONA_PWM_OVERCLOCKED_STS ;
 unsigned int ARIZONA_SLIMBUS_ASYNC_OVERCLOCKED_STS ;
 unsigned int ARIZONA_SLIMBUS_SUBSYS_OVERCLOCKED_STS ;
 unsigned int ARIZONA_SLIMBUS_SYNC_OVERCLOCKED_STS ;
 unsigned int ARIZONA_SPDIF_OVERCLOCKED_STS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;


 int dev_err (int ,char*,...) ;
 int regmap_bulk_read (int ,int ,unsigned int*,int) ;

__attribute__((used)) static irqreturn_t arizona_overclocked(int irq, void *data)
{
 struct arizona *arizona = data;
 unsigned int val[3];
 int ret;

 ret = regmap_bulk_read(arizona->regmap, ARIZONA_INTERRUPT_RAW_STATUS_6,
          &val[0], 3);
 if (ret != 0) {
  dev_err(arizona->dev, "Failed to read overclock status: %d\n",
   ret);
  return IRQ_NONE;
 }

 switch (arizona->type) {
 case 128:
 case 129:



  val[0] = ((val[0] & 0x60e0) >> 1) |
    ((val[0] & 0x1e00) >> 2) |
    (val[0] & 0x000f);
  break;
 default:
  break;
 }

 if (val[0] & ARIZONA_PWM_OVERCLOCKED_STS)
  dev_err(arizona->dev, "PWM overclocked\n");
 if (val[0] & ARIZONA_FX_CORE_OVERCLOCKED_STS)
  dev_err(arizona->dev, "FX core overclocked\n");
 if (val[0] & ARIZONA_DAC_SYS_OVERCLOCKED_STS)
  dev_err(arizona->dev, "DAC SYS overclocked\n");
 if (val[0] & ARIZONA_DAC_WARP_OVERCLOCKED_STS)
  dev_err(arizona->dev, "DAC WARP overclocked\n");
 if (val[0] & ARIZONA_ADC_OVERCLOCKED_STS)
  dev_err(arizona->dev, "ADC overclocked\n");
 if (val[0] & ARIZONA_MIXER_OVERCLOCKED_STS)
  dev_err(arizona->dev, "Mixer overclocked\n");
 if (val[0] & ARIZONA_AIF3_SYNC_OVERCLOCKED_STS)
  dev_err(arizona->dev, "AIF3 overclocked\n");
 if (val[0] & ARIZONA_AIF2_SYNC_OVERCLOCKED_STS)
  dev_err(arizona->dev, "AIF2 overclocked\n");
 if (val[0] & ARIZONA_AIF1_SYNC_OVERCLOCKED_STS)
  dev_err(arizona->dev, "AIF1 overclocked\n");
 if (val[0] & ARIZONA_PAD_CTRL_OVERCLOCKED_STS)
  dev_err(arizona->dev, "Pad control overclocked\n");

 if (val[1] & ARIZONA_SLIMBUS_SUBSYS_OVERCLOCKED_STS)
  dev_err(arizona->dev, "Slimbus subsystem overclocked\n");
 if (val[1] & ARIZONA_SLIMBUS_ASYNC_OVERCLOCKED_STS)
  dev_err(arizona->dev, "Slimbus async overclocked\n");
 if (val[1] & ARIZONA_SLIMBUS_SYNC_OVERCLOCKED_STS)
  dev_err(arizona->dev, "Slimbus sync overclocked\n");
 if (val[1] & ARIZONA_ASRC_ASYNC_SYS_OVERCLOCKED_STS)
  dev_err(arizona->dev, "ASRC async system overclocked\n");
 if (val[1] & ARIZONA_ASRC_ASYNC_WARP_OVERCLOCKED_STS)
  dev_err(arizona->dev, "ASRC async WARP overclocked\n");
 if (val[1] & ARIZONA_ASRC_SYNC_SYS_OVERCLOCKED_STS)
  dev_err(arizona->dev, "ASRC sync system overclocked\n");
 if (val[1] & ARIZONA_ASRC_SYNC_WARP_OVERCLOCKED_STS)
  dev_err(arizona->dev, "ASRC sync WARP overclocked\n");
 if (val[1] & ARIZONA_ADSP2_1_OVERCLOCKED_STS)
  dev_err(arizona->dev, "DSP1 overclocked\n");
 if (val[1] & ARIZONA_ISRC3_OVERCLOCKED_STS)
  dev_err(arizona->dev, "ISRC3 overclocked\n");
 if (val[1] & ARIZONA_ISRC2_OVERCLOCKED_STS)
  dev_err(arizona->dev, "ISRC2 overclocked\n");
 if (val[1] & ARIZONA_ISRC1_OVERCLOCKED_STS)
  dev_err(arizona->dev, "ISRC1 overclocked\n");

 if (val[2] & ARIZONA_SPDIF_OVERCLOCKED_STS)
  dev_err(arizona->dev, "SPDIF overclocked\n");

 return IRQ_HANDLED;
}
