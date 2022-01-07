
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int irq_domain; } ;


 int MMCDETECT_INTR_OFFSET ;
 int MMC_PD ;
 int MMC_PU ;
 int REG_INT_MSK_LINE_B ;
 int REG_INT_MSK_STS_B ;
 int SW_FC ;
 int TWL6030_CFG_INPUT_PUPD3 ;
 int TWL6030_MMCCTRL ;
 int TWL6030_MMCDETECT_INT_MASK ;
 int TWL6030_MODULE_ID0 ;
 int VMMC_AUTO_OFF ;
 int irq_find_mapping (int ,int ) ;
 int pr_err (char*,int) ;
 int twl6030_interrupt_unmask (int ,int ) ;
 TYPE_1__* twl6030_irq ;
 int twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_i2c_write_u8 (int ,int,int ) ;

int twl6030_mmc_card_detect_config(void)
{
 int ret;
 u8 reg_val = 0;


 twl6030_interrupt_unmask(TWL6030_MMCDETECT_INT_MASK,
      REG_INT_MSK_LINE_B);
 twl6030_interrupt_unmask(TWL6030_MMCDETECT_INT_MASK,
      REG_INT_MSK_STS_B);




 ret = twl_i2c_read_u8(TWL6030_MODULE_ID0, &reg_val, TWL6030_MMCCTRL);
 if (ret < 0) {
  pr_err("twl6030: Failed to read MMCCTRL, error %d\n", ret);
  return ret;
 }
 reg_val &= ~VMMC_AUTO_OFF;
 reg_val |= SW_FC;
 ret = twl_i2c_write_u8(TWL6030_MODULE_ID0, reg_val, TWL6030_MMCCTRL);
 if (ret < 0) {
  pr_err("twl6030: Failed to write MMCCTRL, error %d\n", ret);
  return ret;
 }


 ret = twl_i2c_read_u8(TWL6030_MODULE_ID0, &reg_val,
      TWL6030_CFG_INPUT_PUPD3);
 if (ret < 0) {
  pr_err("twl6030: Failed to read CFG_INPUT_PUPD3, error %d\n",
         ret);
  return ret;
 }
 reg_val &= ~(MMC_PU | MMC_PD);
 ret = twl_i2c_write_u8(TWL6030_MODULE_ID0, reg_val,
      TWL6030_CFG_INPUT_PUPD3);
 if (ret < 0) {
  pr_err("twl6030: Failed to write CFG_INPUT_PUPD3, error %d\n",
         ret);
  return ret;
 }

 return irq_find_mapping(twl6030_irq->irq_domain,
     MMCDETECT_INTR_OFFSET);
}
