
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm860x_platform_data {int irq_base; scalar_t__ irq_mode; } ;
struct pm860x_chip {scalar_t__ id; int irq_mode; int irq_base; int core_irq; TYPE_1__* dev; int irq_lock; struct i2c_client* companion; struct i2c_client* client; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {int irq; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ CHIP_PM8607 ;
 int EBUSY ;
 int EINVAL ;
 int INT_STATUS_NUM ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_TRIGGER_FALLING ;
 int PM8607_B0_MISC1 ;
 int PM8607_B0_MISC1_INT_CLEAR ;
 int PM8607_B0_MISC1_INT_MASK ;
 int PM8607_B0_MISC1_INV_INT ;
 int PM8607_INT_MASK_1 ;
 int PM8607_INT_STATUS1 ;
 int dev_err (TYPE_1__*,char*,int) ;
 int irq_alloc_descs (int,int ,int,int ) ;
 int irq_domain_add_legacy (struct device_node*,int,int,int ,int *,struct pm860x_chip*) ;
 int memset (unsigned char*,int,int) ;
 int mutex_init (int *) ;
 int pm860x_bulk_read (struct i2c_client*,int ,int,unsigned char*) ;
 int pm860x_bulk_write (struct i2c_client*,int ,int,unsigned char*) ;
 int pm860x_irq ;
 int pm860x_irq_domain_ops ;
 int pm860x_irqs ;
 int pm860x_set_bits (struct i2c_client*,int ,int,int) ;
 int request_threaded_irq (int ,int *,int ,unsigned long,char*,struct pm860x_chip*) ;

__attribute__((used)) static int device_irq_init(struct pm860x_chip *chip,
         struct pm860x_platform_data *pdata)
{
 struct i2c_client *i2c = (chip->id == CHIP_PM8607) ?
  chip->client : chip->companion;
 unsigned char status_buf[INT_STATUS_NUM];
 unsigned long flags = IRQF_TRIGGER_FALLING | IRQF_ONESHOT;
 int data, mask, ret = -EINVAL;
 int nr_irqs, irq_base = -1;
 struct device_node *node = i2c->dev.of_node;

 mask = PM8607_B0_MISC1_INV_INT | PM8607_B0_MISC1_INT_CLEAR
  | PM8607_B0_MISC1_INT_MASK;
 data = 0;
 chip->irq_mode = 0;
 if (pdata && pdata->irq_mode) {





  data |= PM8607_B0_MISC1_INT_CLEAR;
  chip->irq_mode = 1;
 }
 ret = pm860x_set_bits(i2c, PM8607_B0_MISC1, mask, data);
 if (ret < 0)
  goto out;


 memset(status_buf, 0, INT_STATUS_NUM);
 ret = pm860x_bulk_write(i2c, PM8607_INT_MASK_1,
    INT_STATUS_NUM, status_buf);
 if (ret < 0)
  goto out;

 if (chip->irq_mode) {

  memset(status_buf, 0xFF, INT_STATUS_NUM);
  ret = pm860x_bulk_write(i2c, PM8607_INT_STATUS1,
     INT_STATUS_NUM, status_buf);
 } else {

  ret = pm860x_bulk_read(i2c, PM8607_INT_STATUS1,
     INT_STATUS_NUM, status_buf);
 }
 if (ret < 0)
  goto out;

 mutex_init(&chip->irq_lock);

 if (pdata && pdata->irq_base)
  irq_base = pdata->irq_base;
 nr_irqs = ARRAY_SIZE(pm860x_irqs);
 chip->irq_base = irq_alloc_descs(irq_base, 0, nr_irqs, 0);
 if (chip->irq_base < 0) {
  dev_err(&i2c->dev, "Failed to allocate interrupts, ret:%d\n",
   chip->irq_base);
  ret = -EBUSY;
  goto out;
 }
 irq_domain_add_legacy(node, nr_irqs, chip->irq_base, 0,
         &pm860x_irq_domain_ops, chip);
 chip->core_irq = i2c->irq;
 if (!chip->core_irq)
  goto out;

 ret = request_threaded_irq(chip->core_irq, ((void*)0), pm860x_irq,
       flags | IRQF_ONESHOT, "88pm860x", chip);
 if (ret) {
  dev_err(chip->dev, "Failed to request IRQ: %d\n", ret);
  chip->core_irq = 0;
 }

 return 0;
out:
 chip->core_irq = 0;
 return ret;
}
