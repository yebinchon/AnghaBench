
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7146_dev {struct av7110* ext_priv; } ;
struct av7110 {int vpe_tasklet; int gpio_tasklet; int debi_tasklet; int dev; } ;


 int MASK_03 ;
 int MASK_10 ;
 int MASK_19 ;
 int SAA7146_IER_DISABLE (int ,int) ;
 int SAA7146_ISR_CLEAR (int ,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void av7110_irq(struct saa7146_dev* dev, u32 *isr)
{
 struct av7110 *av7110 = dev->ext_priv;







 if (*isr & MASK_19) {
  SAA7146_IER_DISABLE(av7110->dev, MASK_19);
  SAA7146_ISR_CLEAR(av7110->dev, MASK_19);
  tasklet_schedule(&av7110->debi_tasklet);
 }

 if (*isr & MASK_03) {

  tasklet_schedule(&av7110->gpio_tasklet);
 }

 if (*isr & MASK_10)
  tasklet_schedule(&av7110->vpe_tasklet);
}
