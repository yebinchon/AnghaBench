
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt9p031_platform_data {int target_freq; int ext_freq; } ;
struct TYPE_2__ {int of_node; struct mt9p031_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int CONFIG_OF ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 struct mt9p031_platform_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct device_node* of_graph_get_next_endpoint (int ,int *) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static struct mt9p031_platform_data *
mt9p031_get_pdata(struct i2c_client *client)
{
 struct mt9p031_platform_data *pdata;
 struct device_node *np;

 if (!IS_ENABLED(CONFIG_OF) || !client->dev.of_node)
  return client->dev.platform_data;

 np = of_graph_get_next_endpoint(client->dev.of_node, ((void*)0));
 if (!np)
  return ((void*)0);

 pdata = devm_kzalloc(&client->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  goto done;

 of_property_read_u32(np, "input-clock-frequency", &pdata->ext_freq);
 of_property_read_u32(np, "pixel-clock-frequency", &pdata->target_freq);

done:
 of_node_put(np);
 return pdata;
}
