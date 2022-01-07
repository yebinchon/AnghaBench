
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int of_node; struct adv7343_platform_data* platform_data; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int sd_dac_out; } ;
struct TYPE_4__ {int dac; void* pll_control; void* sleep_mode; } ;
struct adv7343_platform_data {TYPE_2__ sd_config; TYPE_1__ mode_config; } ;


 int CONFIG_OF ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 struct adv7343_platform_data* devm_kzalloc (TYPE_3__*,int,int ) ;
 struct device_node* of_graph_get_next_endpoint (int ,int *) ;
 int of_node_put (struct device_node*) ;
 void* of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32_array (struct device_node*,char*,int ,int) ;

__attribute__((used)) static struct adv7343_platform_data *
adv7343_get_pdata(struct i2c_client *client)
{
 struct adv7343_platform_data *pdata;
 struct device_node *np;

 if (!IS_ENABLED(CONFIG_OF) || !client->dev.of_node)
  return client->dev.platform_data;

 np = of_graph_get_next_endpoint(client->dev.of_node, ((void*)0));
 if (!np)
  return ((void*)0);

 pdata = devm_kzalloc(&client->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  goto done;

 pdata->mode_config.sleep_mode =
   of_property_read_bool(np, "adi,power-mode-sleep-mode");

 pdata->mode_config.pll_control =
   of_property_read_bool(np, "adi,power-mode-pll-ctrl");

 of_property_read_u32_array(np, "adi,dac-enable",
       pdata->mode_config.dac, 6);

 of_property_read_u32_array(np, "adi,sd-dac-enable",
       pdata->sd_config.sd_dac_out, 2);

done:
 of_node_put(np);
 return pdata;
}
