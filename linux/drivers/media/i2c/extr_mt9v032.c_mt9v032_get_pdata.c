
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ parallel; } ;
struct v4l2_fwnode_endpoint {TYPE_2__ bus; int bus_type; } ;
struct property {int length; } ;
struct mt9v032_platform_data {int clk_pol; int link_def_freq; int * link_freqs; } ;
struct TYPE_7__ {int of_node; struct mt9v032_platform_data* platform_data; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;


 int CONFIG_OF ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 int V4L2_MBUS_PCLK_SAMPLE_RISING ;
 int * devm_kcalloc (TYPE_3__*,size_t,int,int ) ;
 struct mt9v032_platform_data* devm_kzalloc (TYPE_3__*,int,int ) ;
 struct property* of_find_property (struct device_node*,char*,int *) ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_graph_get_next_endpoint (int ,int *) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_u64_array (struct device_node*,char*,int *,size_t) ;
 scalar_t__ v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static struct mt9v032_platform_data *
mt9v032_get_pdata(struct i2c_client *client)
{
 struct mt9v032_platform_data *pdata = ((void*)0);
 struct v4l2_fwnode_endpoint endpoint = { .bus_type = 0 };
 struct device_node *np;
 struct property *prop;

 if (!IS_ENABLED(CONFIG_OF) || !client->dev.of_node)
  return client->dev.platform_data;

 np = of_graph_get_next_endpoint(client->dev.of_node, ((void*)0));
 if (!np)
  return ((void*)0);

 if (v4l2_fwnode_endpoint_parse(of_fwnode_handle(np), &endpoint) < 0)
  goto done;

 pdata = devm_kzalloc(&client->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  goto done;

 prop = of_find_property(np, "link-frequencies", ((void*)0));
 if (prop) {
  u64 *link_freqs;
  size_t size = prop->length / sizeof(*link_freqs);

  link_freqs = devm_kcalloc(&client->dev, size,
       sizeof(*link_freqs), GFP_KERNEL);
  if (!link_freqs)
   goto done;

  if (of_property_read_u64_array(np, "link-frequencies",
            link_freqs, size) < 0)
   goto done;

  pdata->link_freqs = link_freqs;
  pdata->link_def_freq = link_freqs[0];
 }

 pdata->clk_pol = !!(endpoint.bus.parallel.flags &
       V4L2_MBUS_PCLK_SAMPLE_RISING);

done:
 of_node_put(np);
 return pdata;
}
