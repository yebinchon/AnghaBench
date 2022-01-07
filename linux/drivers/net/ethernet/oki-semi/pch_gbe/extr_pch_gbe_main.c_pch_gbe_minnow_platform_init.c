
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 unsigned long GPIOF_DIR_OUT ;
 unsigned long GPIOF_EXPORT ;
 unsigned long GPIOF_INIT_HIGH ;
 unsigned int MINNOW_PHY_RESET_GPIO ;
 int dev_err (int *,char*,unsigned int) ;
 int devm_gpio_request_one (int *,unsigned int,unsigned long,char*) ;
 int gpio_set_value (unsigned int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int pch_gbe_minnow_platform_init(struct pci_dev *pdev)
{
 unsigned long flags = GPIOF_DIR_OUT | GPIOF_INIT_HIGH | GPIOF_EXPORT;
 unsigned gpio = MINNOW_PHY_RESET_GPIO;
 int ret;

 ret = devm_gpio_request_one(&pdev->dev, gpio, flags,
        "minnow_phy_reset");
 if (ret) {
  dev_err(&pdev->dev,
   "ERR: Can't request PHY reset GPIO line '%d'\n", gpio);
  return ret;
 }

 gpio_set_value(gpio, 0);
 usleep_range(1250, 1500);
 gpio_set_value(gpio, 1);
 usleep_range(1250, 1500);

 return ret;
}
