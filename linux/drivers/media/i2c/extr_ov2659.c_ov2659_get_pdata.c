
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_fwnode_endpoint {int * link_frequencies; int nr_of_link_frequencies; int bus_type; } ;
struct ov2659_platform_data {int link_frequency; } ;
struct TYPE_3__ {int of_node; struct ov2659_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int CONFIG_OF ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 struct ov2659_platform_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_graph_get_next_endpoint (int ,int *) ;
 int of_node_put (struct device_node*) ;
 int v4l2_fwnode_endpoint_alloc_parse (int ,struct v4l2_fwnode_endpoint*) ;
 int v4l2_fwnode_endpoint_free (struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static struct ov2659_platform_data *
ov2659_get_pdata(struct i2c_client *client)
{
 struct ov2659_platform_data *pdata;
 struct v4l2_fwnode_endpoint bus_cfg = { .bus_type = 0 };
 struct device_node *endpoint;
 int ret;

 if (!IS_ENABLED(CONFIG_OF) || !client->dev.of_node)
  return client->dev.platform_data;

 endpoint = of_graph_get_next_endpoint(client->dev.of_node, ((void*)0));
 if (!endpoint)
  return ((void*)0);

 ret = v4l2_fwnode_endpoint_alloc_parse(of_fwnode_handle(endpoint),
            &bus_cfg);
 if (ret) {
  pdata = ((void*)0);
  goto done;
 }

 pdata = devm_kzalloc(&client->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  goto done;

 if (!bus_cfg.nr_of_link_frequencies) {
  dev_err(&client->dev,
   "link-frequencies property not found or too many\n");
  pdata = ((void*)0);
  goto done;
 }

 pdata->link_frequency = bus_cfg.link_frequencies[0];

done:
 v4l2_fwnode_endpoint_free(&bus_cfg);
 of_node_put(endpoint);
 return pdata;
}
