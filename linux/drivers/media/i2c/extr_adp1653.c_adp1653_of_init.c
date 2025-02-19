
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct device_node {int dummy; } ;
struct adp1653_platform_data {int max_flash_timeout; int max_flash_intensity; int max_torch_intensity; int max_indicator_intensity; int enable_gpio; } ;
struct adp1653_flash {struct adp1653_platform_data* platform_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_gpiod_get (int *,char*,int ) ;
 struct adp1653_platform_data* devm_kzalloc (int *,int,int ) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int adp1653_of_init(struct i2c_client *client,
      struct adp1653_flash *flash,
      struct device_node *node)
{
 struct adp1653_platform_data *pd;
 struct device_node *child;

 pd = devm_kzalloc(&client->dev, sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return -ENOMEM;
 flash->platform_data = pd;

 child = of_get_child_by_name(node, "flash");
 if (!child)
  return -EINVAL;

 if (of_property_read_u32(child, "flash-timeout-us",
     &pd->max_flash_timeout))
  goto err;

 if (of_property_read_u32(child, "flash-max-microamp",
     &pd->max_flash_intensity))
  goto err;

 pd->max_flash_intensity /= 1000;

 if (of_property_read_u32(child, "led-max-microamp",
     &pd->max_torch_intensity))
  goto err;

 pd->max_torch_intensity /= 1000;
 of_node_put(child);

 child = of_get_child_by_name(node, "indicator");
 if (!child)
  return -EINVAL;

 if (of_property_read_u32(child, "led-max-microamp",
     &pd->max_indicator_intensity))
  goto err;

 of_node_put(child);

 pd->enable_gpio = devm_gpiod_get(&client->dev, "enable", GPIOD_OUT_LOW);
 if (IS_ERR(pd->enable_gpio)) {
  dev_err(&client->dev, "Error getting GPIO\n");
  return PTR_ERR(pd->enable_gpio);
 }

 return 0;
err:
 dev_err(&client->dev, "Required property not found\n");
 of_node_put(child);
 return -EINVAL;
}
