
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int i2c_wait; int i2c_state; } ;


 int IIC_STATE_STOP ;
 int SOLO_IIC_CTRL ;
 int SOLO_IRQ_IIC ;
 int solo_irq_off (struct solo_dev*,int ) ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void solo_i2c_stop(struct solo_dev *solo_dev)
{
 solo_irq_off(solo_dev, SOLO_IRQ_IIC);
 solo_reg_write(solo_dev, SOLO_IIC_CTRL, 0);
 solo_dev->i2c_state = IIC_STATE_STOP;
 wake_up(&solo_dev->i2c_wait);
}
