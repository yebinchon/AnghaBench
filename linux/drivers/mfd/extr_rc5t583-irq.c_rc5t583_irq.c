
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rc5t583_irq_data {size_t mask_reg_index; int int_en_bit; size_t master_bit; int grp_index; } ;
struct rc5t583 {int* group_irq_en; scalar_t__ irq_base; int dev; } ;
typedef int irqreturn_t ;


 unsigned int BIT (int) ;
 int IRQ_HANDLED ;
 int RC5T583_INTC_INTMON ;
 int RC5T583_MAX_INTERRUPT_MASK_REGS ;
 int RC5T583_MAX_IRQS ;
 int RTC_INT ;
 int dev_err (int ,char*,int ,int) ;
 int dev_warn (int ,char*,int ,int) ;
 int handle_nested_irq (scalar_t__) ;
 int * irq_clr_add ;
 int * irq_mon_add ;
 int* main_int_type ;
 struct rc5t583_irq_data* rc5t583_irqs ;
 int rc5t583_read (int ,int ,int*) ;
 int rc5t583_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t rc5t583_irq(int irq, void *data)
{
 struct rc5t583 *rc5t583 = data;
 uint8_t int_sts[RC5T583_MAX_INTERRUPT_MASK_REGS];
 uint8_t master_int = 0;
 int i;
 int ret;
 unsigned int rtc_int_sts = 0;


 for (i = 0; i < RC5T583_MAX_INTERRUPT_MASK_REGS; i++)
  int_sts[i] = 0;

 ret = rc5t583_read(rc5t583->dev, RC5T583_INTC_INTMON, &master_int);
 if (ret < 0) {
  dev_err(rc5t583->dev,
   "Error in reading reg 0x%02x error: %d\n",
   RC5T583_INTC_INTMON, ret);
  return IRQ_HANDLED;
 }

 for (i = 0; i < RC5T583_MAX_INTERRUPT_MASK_REGS; ++i) {
  if (!(master_int & main_int_type[i]))
   continue;

  ret = rc5t583_read(rc5t583->dev, irq_mon_add[i], &int_sts[i]);
  if (ret < 0) {
   dev_warn(rc5t583->dev,
    "Error in reading reg 0x%02x error: %d\n",
    irq_mon_add[i], ret);
   int_sts[i] = 0;
   continue;
  }

  if (main_int_type[i] & RTC_INT) {
   rtc_int_sts = 0;
   if (int_sts[i] & 0x1)
    rtc_int_sts |= BIT(6);
   if (int_sts[i] & 0x2)
    rtc_int_sts |= BIT(7);
   if (int_sts[i] & 0x4)
    rtc_int_sts |= BIT(0);
   if (int_sts[i] & 0x8)
    rtc_int_sts |= BIT(5);
  }

  ret = rc5t583_write(rc5t583->dev, irq_clr_add[i],
    ~int_sts[i]);
  if (ret < 0)
   dev_warn(rc5t583->dev,
    "Error in reading reg 0x%02x error: %d\n",
    irq_clr_add[i], ret);

  if (main_int_type[i] & RTC_INT)
   int_sts[i] = rtc_int_sts;
 }


 int_sts[7] |= int_sts[8];


 for (i = 0; i < RC5T583_MAX_IRQS; ++i) {
  const struct rc5t583_irq_data *data = &rc5t583_irqs[i];
  if ((int_sts[data->mask_reg_index] & (1 << data->int_en_bit)) &&
   (rc5t583->group_irq_en[data->master_bit] &
     (1 << data->grp_index)))
   handle_nested_irq(rc5t583->irq_base + i);
 }

 return IRQ_HANDLED;
}
