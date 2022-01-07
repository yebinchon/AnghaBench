
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ab8500_gpadc {scalar_t__ irq_sw; scalar_t__ irq_hw; int dev; int ab8500_gpadc_lock; int ab8500_gpadc_complete; int parent; } ;


 int AB8500_GPADC ;
 scalar_t__ AB8500_GPADC_AUTODATAH_REG ;
 scalar_t__ AB8500_GPADC_AUTODATAL_REG ;
 int AB8500_GPADC_AUTO_TIMER_REG ;
 int AB8500_GPADC_CTRL1_REG ;
 int AB8500_GPADC_CTRL2_REG ;
 int AB8500_GPADC_CTRL3_REG ;
 scalar_t__ AB8500_GPADC_MANDATAH_REG ;
 scalar_t__ AB8500_GPADC_MANDATAL_REG ;
 scalar_t__ AB8500_GPADC_STAT_REG ;
 scalar_t__ AB8540_GPADC_MANDATA2H_REG ;
 scalar_t__ AB8540_GPADC_MANDATA2L_REG ;
 scalar_t__ ADC_HW ;
 scalar_t__ ADC_SW ;
 int ADC_SW_CONV ;
 scalar_t__ AVG_1 ;
 scalar_t__ AVG_16 ;
 scalar_t__ AVG_4 ;
 scalar_t__ AVG_8 ;
 scalar_t__ BAT_CTRL_AND_IBAT ;
 scalar_t__ BAT_TEMP_AND_IBAT ;

 scalar_t__ BTEMP_PULL_UP ;
 int CONVERSION_TIME ;
 scalar_t__ DIS_GPADC ;
 int EINVAL ;
 int ENODEV ;
 int ENOTSUPP ;
 scalar_t__ EN_BUF ;
 scalar_t__ EN_FALLING ;
 scalar_t__ EN_GPADC ;
 scalar_t__ EN_ICHAR ;
 scalar_t__ EN_TRIG_EDGE ;
 scalar_t__ GPADC_BUSY ;
 int HZ ;





 scalar_t__ VBAT_MEAS_AND_IBAT ;
 scalar_t__ VBAT_TRUE_MEAS_AND_IBAT ;
 int abx500_get_register_interruptible (int ,int ,scalar_t__,scalar_t__*) ;
 int abx500_mask_and_set_register_interruptible (int ,int ,int ,int ,int ) ;
 int abx500_set_register_interruptible (int ,int ,int ,scalar_t__) ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 int is_ab8500_2p0_or_earlier (int ) ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int usleep_range (unsigned int,unsigned int) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

int ab8500_gpadc_double_read_raw(struct ab8500_gpadc *gpadc, u8 channel,
  u8 avg_sample, u8 trig_edge, u8 trig_timer, u8 conv_type,
  int *ibat)
{
 int ret;
 int looplimit = 0;
 unsigned long completion_timeout;
 u8 val, low_data, high_data, low_data2, high_data2;
 u8 val_reg1 = 0;
 unsigned int delay_min = 0;
 unsigned int delay_max = 0;
 u8 data_low_addr, data_high_addr;

 if (!gpadc)
  return -ENODEV;


 if ((gpadc->irq_sw < 0) && (conv_type == ADC_SW))
  return -ENOTSUPP;
 if ((gpadc->irq_hw < 0) && (conv_type == ADC_HW))
  return -ENOTSUPP;

 mutex_lock(&gpadc->ab8500_gpadc_lock);

 pm_runtime_get_sync(gpadc->dev);


 do {
  ret = abx500_get_register_interruptible(gpadc->dev,
   AB8500_GPADC, AB8500_GPADC_STAT_REG, &val);
  if (ret < 0)
   goto out;
  if (!(val & GPADC_BUSY))
   break;
  msleep(20);
 } while (++looplimit < 10);
 if (looplimit >= 10 && (val & GPADC_BUSY)) {
  dev_err(gpadc->dev, "gpadc_conversion: GPADC busy");
  ret = -EINVAL;
  goto out;
 }


 val_reg1 |= EN_GPADC;


 switch (avg_sample) {
 case 131:
  val = channel | AVG_1;
  break;
 case 130:
  val = channel | AVG_4;
  break;
 case 129:
  val = channel | AVG_8;
  break;
 default:
  val = channel | AVG_16;
  break;
 }

 if (conv_type == ADC_HW) {
  ret = abx500_set_register_interruptible(gpadc->dev,
    AB8500_GPADC, AB8500_GPADC_CTRL3_REG, val);
  val_reg1 |= EN_TRIG_EDGE;
  if (trig_edge)
   val_reg1 |= EN_FALLING;
 } else
  ret = abx500_set_register_interruptible(gpadc->dev,
    AB8500_GPADC, AB8500_GPADC_CTRL2_REG, val);
 if (ret < 0) {
  dev_err(gpadc->dev,
   "gpadc_conversion: set avg samples failed\n");
  goto out;
 }






 switch (channel) {
 case 132:
 case 128:
  val_reg1 |= EN_BUF | EN_ICHAR;
  break;
 case 133:
  if (!is_ab8500_2p0_or_earlier(gpadc->parent)) {
   val_reg1 |= EN_BUF | BTEMP_PULL_UP;




   delay_min = 1000;
   delay_max = 10000;
   break;
  }

 default:
  val_reg1 |= EN_BUF;
  break;
 }


 ret = abx500_set_register_interruptible(gpadc->dev,
  AB8500_GPADC, AB8500_GPADC_CTRL1_REG, val_reg1);
 if (ret < 0) {
  dev_err(gpadc->dev,
   "gpadc_conversion: set Control register failed\n");
  goto out;
 }

 if (delay_min != 0)
  usleep_range(delay_min, delay_max);

 if (conv_type == ADC_HW) {

  ret = abx500_set_register_interruptible(gpadc->dev,
   AB8500_GPADC, AB8500_GPADC_AUTO_TIMER_REG, trig_timer);
  if (ret < 0) {
   dev_err(gpadc->dev,
    "gpadc_conversion: trig timer failed\n");
   goto out;
  }
  completion_timeout = 2 * HZ;
  data_low_addr = AB8500_GPADC_AUTODATAL_REG;
  data_high_addr = AB8500_GPADC_AUTODATAH_REG;
 } else {

  ret = abx500_mask_and_set_register_interruptible(gpadc->dev,
   AB8500_GPADC, AB8500_GPADC_CTRL1_REG,
   ADC_SW_CONV, ADC_SW_CONV);
  if (ret < 0) {
   dev_err(gpadc->dev,
    "gpadc_conversion: start s/w conv failed\n");
   goto out;
  }
  completion_timeout = msecs_to_jiffies(CONVERSION_TIME);
  data_low_addr = AB8500_GPADC_MANDATAL_REG;
  data_high_addr = AB8500_GPADC_MANDATAH_REG;
 }


 if (!wait_for_completion_timeout(&gpadc->ab8500_gpadc_complete,
   completion_timeout)) {
  dev_err(gpadc->dev,
   "timeout didn't receive GPADC conv interrupt\n");
  ret = -EINVAL;
  goto out;
 }


 ret = abx500_get_register_interruptible(gpadc->dev,
   AB8500_GPADC, data_low_addr, &low_data);
 if (ret < 0) {
  dev_err(gpadc->dev, "gpadc_conversion: read low data failed\n");
  goto out;
 }

 ret = abx500_get_register_interruptible(gpadc->dev,
  AB8500_GPADC, data_high_addr, &high_data);
 if (ret < 0) {
  dev_err(gpadc->dev, "gpadc_conversion: read high data failed\n");
  goto out;
 }


 if ((channel == BAT_CTRL_AND_IBAT) ||
   (channel == VBAT_MEAS_AND_IBAT) ||
   (channel == VBAT_TRUE_MEAS_AND_IBAT) ||
   (channel == BAT_TEMP_AND_IBAT)) {

  if (conv_type == ADC_HW) {

   ret = -ENOTSUPP;
   dev_err(gpadc->dev,
    "gpadc_conversion: only SW double conversion supported\n");
   goto out;
  } else {

   ret = abx500_get_register_interruptible(gpadc->dev,
    AB8500_GPADC, AB8540_GPADC_MANDATA2L_REG,
    &low_data2);
   if (ret < 0) {
    dev_err(gpadc->dev,
     "gpadc_conversion: read sw low data 2 failed\n");
    goto out;
   }

   ret = abx500_get_register_interruptible(gpadc->dev,
    AB8500_GPADC, AB8540_GPADC_MANDATA2H_REG,
    &high_data2);
   if (ret < 0) {
    dev_err(gpadc->dev,
     "gpadc_conversion: read sw high data 2 failed\n");
    goto out;
   }
   if (ibat != ((void*)0)) {
    *ibat = (high_data2 << 8) | low_data2;
   } else {
    dev_warn(gpadc->dev,
     "gpadc_conversion: ibat not stored\n");
   }

  }
 }


 ret = abx500_set_register_interruptible(gpadc->dev, AB8500_GPADC,
  AB8500_GPADC_CTRL1_REG, DIS_GPADC);
 if (ret < 0) {
  dev_err(gpadc->dev, "gpadc_conversion: disable gpadc failed\n");
  goto out;
 }


 pm_runtime_mark_last_busy(gpadc->dev);
 pm_runtime_put_autosuspend(gpadc->dev);

 mutex_unlock(&gpadc->ab8500_gpadc_lock);

 return (high_data << 8) | low_data;

out:






 (void) abx500_set_register_interruptible(gpadc->dev, AB8500_GPADC,
  AB8500_GPADC_CTRL1_REG, DIS_GPADC);
 pm_runtime_put(gpadc->dev);
 mutex_unlock(&gpadc->ab8500_gpadc_lock);
 dev_err(gpadc->dev,
  "gpadc_conversion: Failed to AD convert channel %d\n", channel);
 return ret;
}
