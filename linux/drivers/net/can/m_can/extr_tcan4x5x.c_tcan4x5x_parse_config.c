
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcan4x5x_priv {int power; int * device_state_gpio; int * reset_gpio; int * device_wake_gpio; } ;
struct m_can_classdev {int dev; struct tcan4x5x_priv* device_data; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int GPIOD_IN ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*) ;
 int * devm_gpiod_get (int ,char*,int ) ;
 void* devm_gpiod_get_optional (int ,char*,int ) ;
 int devm_regulator_get_optional (int ,char*) ;

__attribute__((used)) static int tcan4x5x_parse_config(struct m_can_classdev *cdev)
{
 struct tcan4x5x_priv *tcan4x5x = cdev->device_data;

 tcan4x5x->device_wake_gpio = devm_gpiod_get(cdev->dev, "device-wake",
          GPIOD_OUT_HIGH);
 if (IS_ERR(tcan4x5x->device_wake_gpio)) {
  dev_err(cdev->dev, "device-wake gpio not defined\n");
  return -EINVAL;
 }

 tcan4x5x->reset_gpio = devm_gpiod_get_optional(cdev->dev, "reset",
             GPIOD_OUT_LOW);
 if (IS_ERR(tcan4x5x->reset_gpio))
  tcan4x5x->reset_gpio = ((void*)0);

 tcan4x5x->device_state_gpio = devm_gpiod_get_optional(cdev->dev,
             "device-state",
             GPIOD_IN);
 if (IS_ERR(tcan4x5x->device_state_gpio))
  tcan4x5x->device_state_gpio = ((void*)0);

 tcan4x5x->power = devm_regulator_get_optional(cdev->dev,
            "vsup");
 if (PTR_ERR(tcan4x5x->power) == -EPROBE_DEFER)
  return -EPROBE_DEFER;

 return 0;
}
