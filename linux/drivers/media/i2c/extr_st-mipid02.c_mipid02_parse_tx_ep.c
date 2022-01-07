
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fwnode_endpoint {int bus_type; } ;
struct mipid02_dev {struct v4l2_fwnode_endpoint tx; struct i2c_client* i2c_client; } ;
struct TYPE_2__ {int of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int V4L2_MBUS_PARALLEL ;
 int dev_err (TYPE_1__*,char*) ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_graph_get_endpoint_by_regs (int ,int,int ) ;
 int of_node_put (struct device_node*) ;
 int v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int mipid02_parse_tx_ep(struct mipid02_dev *bridge)
{
 struct v4l2_fwnode_endpoint ep = { .bus_type = V4L2_MBUS_PARALLEL };
 struct i2c_client *client = bridge->i2c_client;
 struct device_node *ep_node;
 int ret;


 ep_node = of_graph_get_endpoint_by_regs(bridge->i2c_client->dev.of_node,
      2, 0);
 if (!ep_node) {
  dev_err(&client->dev, "unable to find port1 ep");
  ret = -EINVAL;
  goto error;
 }

 ret = v4l2_fwnode_endpoint_parse(of_fwnode_handle(ep_node), &ep);
 if (ret) {
  dev_err(&client->dev, "Could not parse v4l2 endpoint\n");
  goto error_of_node_put;
 }

 of_node_put(ep_node);
 bridge->tx = ep;

 return 0;

error_of_node_put:
 of_node_put(ep_node);
error:

 return -EINVAL;
}
