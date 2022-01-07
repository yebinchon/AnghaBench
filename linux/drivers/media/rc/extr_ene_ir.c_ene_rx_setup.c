
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ene_device {scalar_t__ pll_freq; scalar_t__ hw_revision; int hw_use_gpio_0a; int rx_fan_input_inuse; TYPE_1__* rdev; scalar_t__ hw_learning_and_tx_capable; scalar_t__ hw_fan_input; scalar_t__ carrier_detect_enabled; scalar_t__ learning_mode_enabled; } ;
struct TYPE_2__ {scalar_t__ min_timeout; scalar_t__ max_timeout; scalar_t__ timeout; void* tx_resolution; void* rx_resolution; } ;


 int ENE_CIRCAR_PULS ;
 int ENE_CIRCFG ;
 int ENE_CIRCFG2 ;
 int ENE_CIRCFG2_CARR_DETECT ;
 int ENE_CIRCFG_CARR_DEMOD ;
 int ENE_CIRRLC_CFG ;
 int ENE_CIRRLC_CFG_OVERFLOW ;
 scalar_t__ ENE_DEFAULT_PLL_FREQ ;
 int ENE_DEFAULT_SAMPLE_PERIOD ;
 int ENE_FW_SAMPLE_PERIOD_FAN ;
 int ENE_FW_SMPL_BUF_FAN_MSK ;
 scalar_t__ ENE_HW_C ;
 void* US_TO_NS (int) ;
 int WARN_ON (int) ;
 int dbg (char*,int) ;
 scalar_t__ debug ;
 int ene_clear_reg_mask (struct ene_device*,int ,int ) ;
 int ene_rx_select_input (struct ene_device*,int) ;
 int ene_set_clear_reg_mask (struct ene_device*,int ,int ,int) ;
 int ene_set_reg_mask (struct ene_device*,int ,int ) ;
 int ene_write_reg (struct ene_device*,int ,int) ;
 int sample_period ;

__attribute__((used)) static void ene_rx_setup(struct ene_device *dev)
{
 bool learning_mode = dev->learning_mode_enabled ||
     dev->carrier_detect_enabled;
 int sample_period_adjust = 0;

 dbg("RX: setup receiver, learning mode = %d", learning_mode);



 ene_write_reg(dev, ENE_CIRCFG2, 0x00);


 if (sample_period == ENE_DEFAULT_SAMPLE_PERIOD)
  sample_period_adjust =
   dev->pll_freq == ENE_DEFAULT_PLL_FREQ ? 1 : 2;

 ene_write_reg(dev, ENE_CIRRLC_CFG,
   (sample_period + sample_period_adjust) |
      ENE_CIRRLC_CFG_OVERFLOW);

 if (dev->hw_revision < ENE_HW_C)
  goto select_timeout;

 if (learning_mode) {

  WARN_ON(!dev->hw_learning_and_tx_capable);






  ene_rx_select_input(dev, !dev->hw_use_gpio_0a);
  dev->rx_fan_input_inuse = 0;


  ene_set_reg_mask(dev, ENE_CIRCFG, ENE_CIRCFG_CARR_DEMOD);


  ene_write_reg(dev, ENE_CIRCAR_PULS, 0x63);
  ene_set_clear_reg_mask(dev, ENE_CIRCFG2, ENE_CIRCFG2_CARR_DETECT,
   dev->carrier_detect_enabled || debug);
 } else {
  if (dev->hw_fan_input)
   dev->rx_fan_input_inuse = 1;
  else
   ene_rx_select_input(dev, dev->hw_use_gpio_0a);


  ene_clear_reg_mask(dev, ENE_CIRCFG, ENE_CIRCFG_CARR_DEMOD);
  ene_clear_reg_mask(dev, ENE_CIRCFG2, ENE_CIRCFG2_CARR_DETECT);
 }

select_timeout:
 if (dev->rx_fan_input_inuse) {
  dev->rdev->rx_resolution = US_TO_NS(ENE_FW_SAMPLE_PERIOD_FAN);



  dev->rdev->min_timeout = dev->rdev->max_timeout =
   US_TO_NS(ENE_FW_SMPL_BUF_FAN_MSK *
    ENE_FW_SAMPLE_PERIOD_FAN);
 } else {
  dev->rdev->rx_resolution = US_TO_NS(sample_period);






  dev->rdev->min_timeout = US_TO_NS(127 * sample_period);
  dev->rdev->max_timeout = US_TO_NS(200000);
 }

 if (dev->hw_learning_and_tx_capable)
  dev->rdev->tx_resolution = US_TO_NS(sample_period);

 if (dev->rdev->timeout > dev->rdev->max_timeout)
  dev->rdev->timeout = dev->rdev->max_timeout;
 if (dev->rdev->timeout < dev->rdev->min_timeout)
  dev->rdev->timeout = dev->rdev->min_timeout;
}
