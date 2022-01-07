
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct max8925_platform_data {int tsc_irq; } ;
struct max8925_chip {scalar_t__ irq_base; int core_irq; int tsc_irq; TYPE_1__* dev; int adc; int irq_lock; int rtc; int i2c; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int EBUSY ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_TRIGGER_FALLING ;
 int MAX8925_ALARM0_CNTL ;
 int MAX8925_ALARM1_CNTL ;
 int MAX8925_CHG_IRQ1 ;
 int MAX8925_CHG_IRQ1_MASK ;
 int MAX8925_CHG_IRQ2 ;
 int MAX8925_CHG_IRQ2_MASK ;
 int MAX8925_NR_IRQS ;
 int MAX8925_ON_OFF_IRQ1 ;
 int MAX8925_ON_OFF_IRQ1_MASK ;
 int MAX8925_ON_OFF_IRQ2 ;
 int MAX8925_ON_OFF_IRQ2_MASK ;
 int MAX8925_RTC_IRQ ;
 int MAX8925_RTC_IRQ_MASK ;
 int MAX8925_TSC_IRQ ;
 int MAX8925_TSC_IRQ_MASK ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_warn (TYPE_1__*,char*) ;
 scalar_t__ irq_alloc_descs (int,int ,int ,int ) ;
 int irq_domain_add_legacy (struct device_node*,int ,int,int ,int *,struct max8925_chip*) ;
 int max8925_irq ;
 int max8925_irq_domain_ops ;
 int max8925_reg_read (int ,int ) ;
 int max8925_reg_write (int ,int ,int) ;
 int max8925_tsc_irq ;
 int mutex_init (int *) ;
 int request_threaded_irq (int,int *,int ,unsigned long,char*,struct max8925_chip*) ;

__attribute__((used)) static int max8925_irq_init(struct max8925_chip *chip, int irq,
       struct max8925_platform_data *pdata)
{
 unsigned long flags = IRQF_TRIGGER_FALLING | IRQF_ONESHOT;
 int ret;
 struct device_node *node = chip->dev->of_node;


 max8925_reg_read(chip->i2c, MAX8925_CHG_IRQ1);
 max8925_reg_read(chip->i2c, MAX8925_CHG_IRQ2);
 max8925_reg_read(chip->i2c, MAX8925_ON_OFF_IRQ1);
 max8925_reg_read(chip->i2c, MAX8925_ON_OFF_IRQ2);
 max8925_reg_read(chip->rtc, MAX8925_RTC_IRQ);
 max8925_reg_read(chip->adc, MAX8925_TSC_IRQ);

 max8925_reg_write(chip->rtc, MAX8925_ALARM0_CNTL, 0);
 max8925_reg_write(chip->rtc, MAX8925_ALARM1_CNTL, 0);
 max8925_reg_write(chip->i2c, MAX8925_CHG_IRQ1_MASK, 0xff);
 max8925_reg_write(chip->i2c, MAX8925_CHG_IRQ2_MASK, 0xff);
 max8925_reg_write(chip->i2c, MAX8925_ON_OFF_IRQ1_MASK, 0xff);
 max8925_reg_write(chip->i2c, MAX8925_ON_OFF_IRQ2_MASK, 0xff);
 max8925_reg_write(chip->rtc, MAX8925_RTC_IRQ_MASK, 0xff);

 mutex_init(&chip->irq_lock);
 chip->irq_base = irq_alloc_descs(-1, 0, MAX8925_NR_IRQS, 0);
 if (chip->irq_base < 0) {
  dev_err(chip->dev, "Failed to allocate interrupts, ret:%d\n",
   chip->irq_base);
  return -EBUSY;
 }

 irq_domain_add_legacy(node, MAX8925_NR_IRQS, chip->irq_base, 0,
         &max8925_irq_domain_ops, chip);


 chip->core_irq = irq;
 if (!chip->core_irq)
  return -EBUSY;
 ret = request_threaded_irq(irq, ((void*)0), max8925_irq, flags | IRQF_ONESHOT,
       "max8925", chip);
 if (ret) {
  dev_err(chip->dev, "Failed to request core IRQ: %d\n", ret);
  chip->core_irq = 0;
  return -EBUSY;
 }




 max8925_reg_write(chip->adc, MAX8925_TSC_IRQ_MASK, 0x0f);

 if (!pdata->tsc_irq) {
  dev_warn(chip->dev, "No interrupt support on TSC IRQ\n");
  return 0;
 }
 chip->tsc_irq = pdata->tsc_irq;
 ret = request_threaded_irq(chip->tsc_irq, ((void*)0), max8925_tsc_irq,
       flags | IRQF_ONESHOT, "max8925-tsc", chip);
 if (ret) {
  dev_err(chip->dev, "Failed to request TSC IRQ: %d\n", ret);
  chip->tsc_irq = 0;
 }
 return 0;
}
