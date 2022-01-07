
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan9303 {int dev; int alr_mutex; int indirect_mutex; } ;
struct device_node {int dummy; } ;


 int dev_dbg (int ,char*,int) ;
 int lan9303_check_device (struct lan9303*) ;
 int lan9303_handle_reset (struct lan9303*) ;
 int lan9303_probe_reset_gpio (struct lan9303*,struct device_node*) ;
 int lan9303_register_switch (struct lan9303*) ;
 int mutex_init (int *) ;

int lan9303_probe(struct lan9303 *chip, struct device_node *np)
{
 int ret;

 mutex_init(&chip->indirect_mutex);
 mutex_init(&chip->alr_mutex);

 ret = lan9303_probe_reset_gpio(chip, np);
 if (ret)
  return ret;

 lan9303_handle_reset(chip);

 ret = lan9303_check_device(chip);
 if (ret)
  return ret;

 ret = lan9303_register_switch(chip);
 if (ret) {
  dev_dbg(chip->dev, "Failed to register switch: %d\n", ret);
  return ret;
 }

 return 0;
}
