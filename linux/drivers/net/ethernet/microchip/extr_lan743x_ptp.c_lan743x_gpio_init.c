
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_gpio {int gpio_cfg0; int gpio_cfg1; int gpio_cfg2; int gpio_cfg3; int gpio_lock; } ;
struct lan743x_adapter {struct lan743x_gpio gpio; } ;


 int GPIO_CFG0 ;
 int GPIO_CFG1 ;
 int GPIO_CFG2 ;
 int GPIO_CFG3 ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int spin_lock_init (int *) ;

int lan743x_gpio_init(struct lan743x_adapter *adapter)
{
 struct lan743x_gpio *gpio = &adapter->gpio;

 spin_lock_init(&gpio->gpio_lock);

 gpio->gpio_cfg0 = 0;
 gpio->gpio_cfg1 = 0x0FFF0000;
 gpio->gpio_cfg2 = 0;
 gpio->gpio_cfg3 = 0;
 lan743x_csr_write(adapter, GPIO_CFG0, gpio->gpio_cfg0);
 lan743x_csr_write(adapter, GPIO_CFG1, gpio->gpio_cfg1);
 lan743x_csr_write(adapter, GPIO_CFG2, gpio->gpio_cfg2);
 lan743x_csr_write(adapter, GPIO_CFG3, gpio->gpio_cfg3);

 return 0;
}
