
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dev; int regmap; } ;
typedef int irqreturn_t ;


 unsigned int ARIZONA_ADC_UNDERCLOCKED_STS ;
 unsigned int ARIZONA_AIF1_UNDERCLOCKED_STS ;
 unsigned int ARIZONA_AIF2_UNDERCLOCKED_STS ;
 unsigned int ARIZONA_AIF3_UNDERCLOCKED_STS ;
 unsigned int ARIZONA_ASRC_UNDERCLOCKED_STS ;
 unsigned int ARIZONA_DAC_UNDERCLOCKED_STS ;
 unsigned int ARIZONA_FX_UNDERCLOCKED_STS ;
 int ARIZONA_INTERRUPT_RAW_STATUS_8 ;
 unsigned int ARIZONA_ISRC1_UNDERCLOCKED_STS ;
 unsigned int ARIZONA_ISRC2_UNDERCLOCKED_STS ;
 unsigned int ARIZONA_ISRC3_UNDERCLOCKED_STS ;
 unsigned int ARIZONA_MIXER_UNDERCLOCKED_STS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_err (int ,char*,...) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t arizona_underclocked(int irq, void *data)
{
 struct arizona *arizona = data;
 unsigned int val;
 int ret;

 ret = regmap_read(arizona->regmap, ARIZONA_INTERRUPT_RAW_STATUS_8,
     &val);
 if (ret != 0) {
  dev_err(arizona->dev, "Failed to read underclock status: %d\n",
   ret);
  return IRQ_NONE;
 }

 if (val & ARIZONA_AIF3_UNDERCLOCKED_STS)
  dev_err(arizona->dev, "AIF3 underclocked\n");
 if (val & ARIZONA_AIF2_UNDERCLOCKED_STS)
  dev_err(arizona->dev, "AIF2 underclocked\n");
 if (val & ARIZONA_AIF1_UNDERCLOCKED_STS)
  dev_err(arizona->dev, "AIF1 underclocked\n");
 if (val & ARIZONA_ISRC3_UNDERCLOCKED_STS)
  dev_err(arizona->dev, "ISRC3 underclocked\n");
 if (val & ARIZONA_ISRC2_UNDERCLOCKED_STS)
  dev_err(arizona->dev, "ISRC2 underclocked\n");
 if (val & ARIZONA_ISRC1_UNDERCLOCKED_STS)
  dev_err(arizona->dev, "ISRC1 underclocked\n");
 if (val & ARIZONA_FX_UNDERCLOCKED_STS)
  dev_err(arizona->dev, "FX underclocked\n");
 if (val & ARIZONA_ASRC_UNDERCLOCKED_STS)
  dev_err(arizona->dev, "ASRC underclocked\n");
 if (val & ARIZONA_DAC_UNDERCLOCKED_STS)
  dev_err(arizona->dev, "DAC underclocked\n");
 if (val & ARIZONA_ADC_UNDERCLOCKED_STS)
  dev_err(arizona->dev, "ADC underclocked\n");
 if (val & ARIZONA_MIXER_UNDERCLOCKED_STS)
  dev_err(arizona->dev, "Mixer dropped sample\n");

 return IRQ_HANDLED;
}
