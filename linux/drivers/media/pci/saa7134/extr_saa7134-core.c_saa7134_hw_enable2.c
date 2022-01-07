
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dev {scalar_t__ has_remote; TYPE_1__* remote; } ;
struct TYPE_2__ {int mask_keydown; int mask_keyup; } ;


 int SAA7134_IRQ1 ;
 int SAA7134_IRQ2 ;
 unsigned int SAA7134_IRQ2_INTE_AR ;
 unsigned int SAA7134_IRQ2_INTE_DEC0 ;
 unsigned int SAA7134_IRQ2_INTE_DEC1 ;
 unsigned int SAA7134_IRQ2_INTE_DEC2 ;
 unsigned int SAA7134_IRQ2_INTE_DEC3 ;
 unsigned int SAA7134_IRQ2_INTE_GPIO16_N ;
 unsigned int SAA7134_IRQ2_INTE_GPIO18_N ;
 unsigned int SAA7134_IRQ2_INTE_GPIO18_P ;
 unsigned int SAA7134_IRQ2_INTE_PE ;
 scalar_t__ SAA7134_REMOTE_GPIO ;
 scalar_t__ SAA7134_REMOTE_I2C ;
 int request_module (char*) ;
 int saa_writel (int ,unsigned int) ;

__attribute__((used)) static int saa7134_hw_enable2(struct saa7134_dev *dev)
{

 unsigned int irq2_mask;


 irq2_mask =
  SAA7134_IRQ2_INTE_DEC3 |
  SAA7134_IRQ2_INTE_DEC2 |
  SAA7134_IRQ2_INTE_DEC1 |
  SAA7134_IRQ2_INTE_DEC0 |
  SAA7134_IRQ2_INTE_PE |
  SAA7134_IRQ2_INTE_AR;

 if (dev->has_remote == SAA7134_REMOTE_GPIO && dev->remote) {
  if (dev->remote->mask_keydown & 0x10000)
   irq2_mask |= SAA7134_IRQ2_INTE_GPIO16_N;
  else {
   if (dev->remote->mask_keydown & 0x40000)
    irq2_mask |= SAA7134_IRQ2_INTE_GPIO18_P;
   if (dev->remote->mask_keyup & 0x40000)
    irq2_mask |= SAA7134_IRQ2_INTE_GPIO18_N;
  }
 }

 if (dev->has_remote == SAA7134_REMOTE_I2C) {
  request_module("ir-kbd-i2c");
 }

 saa_writel(SAA7134_IRQ1, 0);
 saa_writel(SAA7134_IRQ2, irq2_mask);

 return 0;
}
