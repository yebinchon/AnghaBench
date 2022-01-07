
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe {int sample_time; int mod_12b; int ref_sel; int adc_freq; int dev; } ;


 int STMPE811_REG_ADC_CTRL1 ;
 int STMPE811_REG_ADC_CTRL2 ;
 int STMPE_ADC_FREQ (int) ;
 int STMPE_MOD_12B (int) ;
 int STMPE_REF_SEL (int) ;
 int STMPE_SAMPLE_TIME (int) ;
 int dev_err (int ,char*) ;
 int stmpe_set_bits (struct stmpe*,int ,int,int) ;

int stmpe811_adc_common_init(struct stmpe *stmpe)
{
 int ret;
 u8 adc_ctrl1, adc_ctrl1_mask;

 adc_ctrl1 = STMPE_SAMPLE_TIME(stmpe->sample_time) |
      STMPE_MOD_12B(stmpe->mod_12b) |
      STMPE_REF_SEL(stmpe->ref_sel);
 adc_ctrl1_mask = STMPE_SAMPLE_TIME(0xff) | STMPE_MOD_12B(0xff) |
    STMPE_REF_SEL(0xff);

 ret = stmpe_set_bits(stmpe, STMPE811_REG_ADC_CTRL1,
   adc_ctrl1_mask, adc_ctrl1);
 if (ret) {
  dev_err(stmpe->dev, "Could not setup ADC\n");
  return ret;
 }

 ret = stmpe_set_bits(stmpe, STMPE811_REG_ADC_CTRL2,
   STMPE_ADC_FREQ(0xff), STMPE_ADC_FREQ(stmpe->adc_freq));
 if (ret) {
  dev_err(stmpe->dev, "Could not setup ADC\n");
  return ret;
 }

 return 0;
}
