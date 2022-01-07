
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucb1x00_dev {struct platform_device* priv; struct ucb1x00* ucb; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct ucb1x00 {int dev; TYPE_1__ gpio; } ;
struct platform_device {int dummy; } ;
struct gpio_keys_platform_data {int can_disable; unsigned int nbuttons; int poll_interval; char* name; struct gpio_keys_platform_data* buttons; int type; scalar_t__ gpio; scalar_t__ code; } ;
struct gpio_keys_button {int can_disable; unsigned int nbuttons; int poll_interval; char* name; struct gpio_keys_button* buttons; int type; scalar_t__ gpio; scalar_t__ code; } ;
typedef int keys ;
typedef int buttons ;


 unsigned int ARRAY_SIZE (struct gpio_keys_platform_data*) ;
 scalar_t__ BTN_0 ;
 int EV_KEY ;
 int dev_attr_batt_temp ;
 int dev_attr_vbatt ;
 int dev_attr_vcharger ;
 int device_create_file (int *,int *) ;
 int memset (struct gpio_keys_platform_data*,int ,int) ;
 struct platform_device* platform_device_register_data (int *,char*,int,struct gpio_keys_platform_data*,int) ;

__attribute__((used)) static int ucb1x00_assabet_add(struct ucb1x00_dev *dev)
{
 struct ucb1x00 *ucb = dev->ucb;
 struct platform_device *pdev;
 struct gpio_keys_platform_data keys;
 static struct gpio_keys_button buttons[6];
 unsigned i;

 memset(buttons, 0, sizeof(buttons));
 memset(&keys, 0, sizeof(keys));

 for (i = 0; i < ARRAY_SIZE(buttons); i++) {
  buttons[i].code = BTN_0 + i;
  buttons[i].gpio = ucb->gpio.base + i;
  buttons[i].type = EV_KEY;
  buttons[i].can_disable = 1;
 }

 keys.buttons = buttons;
 keys.nbuttons = ARRAY_SIZE(buttons);
 keys.poll_interval = 50;
 keys.name = "ucb1x00";

 pdev = platform_device_register_data(&ucb->dev, "gpio-keys", -1,
  &keys, sizeof(keys));

 device_create_file(&ucb->dev, &dev_attr_vbatt);
 device_create_file(&ucb->dev, &dev_attr_vcharger);
 device_create_file(&ucb->dev, &dev_attr_batt_temp);

 dev->priv = pdev;
 return 0;
}
