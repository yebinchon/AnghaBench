
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s5c73m3 {TYPE_1__* gpio; TYPE_2__* i2c_client; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int gpio; int level; } ;


 int EINVAL ;
 int GPIO_NUM ;
 int OF_GPIO_ACTIVE_LOW ;
 int dev_err (struct device*,char*,char const* const) ;
 int of_get_named_gpio_flags (struct device_node*,char const* const,int ,int*) ;

__attribute__((used)) static int s5c73m3_parse_gpios(struct s5c73m3 *state)
{
 static const char * const prop_names[] = {
  "standby-gpios", "xshutdown-gpios",
 };
 struct device *dev = &state->i2c_client->dev;
 struct device_node *node = dev->of_node;
 int ret, i;

 for (i = 0; i < GPIO_NUM; ++i) {
  enum of_gpio_flags of_flags;

  ret = of_get_named_gpio_flags(node, prop_names[i],
           0, &of_flags);
  if (ret < 0) {
   dev_err(dev, "failed to parse %s DT property\n",
    prop_names[i]);
   return -EINVAL;
  }
  state->gpio[i].gpio = ret;
  state->gpio[i].level = !(of_flags & OF_GPIO_ACTIVE_LOW);
 }
 return 0;
}
