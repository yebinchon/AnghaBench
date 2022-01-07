
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc5t583 {int irq_lock; int dev; int intc_inten_reg; int * irq_en_reg; int * gpedge_reg; } ;
struct irq_data {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int RC5T583_INTC_INTEN ;
 int dev_warn (int ,char*,int ,int) ;
 int * gpedge_add ;
 struct rc5t583* irq_data_get_irq_chip_data (struct irq_data*) ;
 int * irq_en_add ;
 int mutex_unlock (int *) ;
 int rc5t583_write (int ,int ,int ) ;

__attribute__((used)) static void rc5t583_irq_sync_unlock(struct irq_data *irq_data)
{
 struct rc5t583 *rc5t583 = irq_data_get_irq_chip_data(irq_data);
 int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(rc5t583->gpedge_reg); i++) {
  ret = rc5t583_write(rc5t583->dev, gpedge_add[i],
    rc5t583->gpedge_reg[i]);
  if (ret < 0)
   dev_warn(rc5t583->dev,
    "Error in writing reg 0x%02x error: %d\n",
    gpedge_add[i], ret);
 }

 for (i = 0; i < ARRAY_SIZE(rc5t583->irq_en_reg); i++) {
  ret = rc5t583_write(rc5t583->dev, irq_en_add[i],
     rc5t583->irq_en_reg[i]);
  if (ret < 0)
   dev_warn(rc5t583->dev,
    "Error in writing reg 0x%02x error: %d\n",
    irq_en_add[i], ret);
 }

 ret = rc5t583_write(rc5t583->dev, RC5T583_INTC_INTEN,
    rc5t583->intc_inten_reg);
 if (ret < 0)
  dev_warn(rc5t583->dev,
   "Error in writing reg 0x%02x error: %d\n",
   RC5T583_INTC_INTEN, ret);

 mutex_unlock(&rc5t583->irq_lock);
}
