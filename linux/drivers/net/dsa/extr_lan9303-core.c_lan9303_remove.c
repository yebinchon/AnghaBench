
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan9303 {int reset_gpio; int ds; int dev; } ;


 int dev_warn (int ,char*) ;
 int dsa_unregister_switch (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int gpiod_unexport (int ) ;
 int lan9303_disable_processing (struct lan9303*) ;

int lan9303_remove(struct lan9303 *chip)
{
 int rc;

 rc = lan9303_disable_processing(chip);
 if (rc != 0)
  dev_warn(chip->dev, "shutting down failed\n");

 dsa_unregister_switch(chip->ds);


 gpiod_set_value_cansleep(chip->reset_gpio, 1);
 gpiod_unexport(chip->reset_gpio);

 return 0;
}
