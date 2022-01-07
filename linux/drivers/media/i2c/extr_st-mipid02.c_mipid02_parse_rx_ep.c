
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int num_data_lanes; } ;
struct TYPE_11__ {TYPE_1__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {TYPE_2__ bus; int bus_type; } ;
struct TYPE_13__ {int * ops; } ;
struct TYPE_12__ {int fwnode; } ;
struct TYPE_14__ {TYPE_3__ match; int match_type; } ;
struct mipid02_dev {TYPE_4__ notifier; int sd; TYPE_8__ asd; struct v4l2_fwnode_endpoint rx; struct i2c_client* i2c_client; } ;
struct TYPE_15__ {int of_node; } ;
struct i2c_client {TYPE_9__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int V4L2_ASYNC_MATCH_FWNODE ;
 int V4L2_MBUS_CSI2_DPHY ;
 int dev_err (TYPE_9__*,char*,...) ;
 int fwnode_graph_get_remote_port_parent (int ) ;
 int fwnode_handle_put (int ) ;
 int mipid02_notifier_ops ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_graph_get_endpoint_by_regs (int ,int ,int ) ;
 int of_node_put (struct device_node*) ;
 int v4l2_async_notifier_add_subdev (TYPE_4__*,TYPE_8__*) ;
 int v4l2_async_notifier_cleanup (TYPE_4__*) ;
 int v4l2_async_notifier_init (TYPE_4__*) ;
 int v4l2_async_subdev_notifier_register (int *,TYPE_4__*) ;
 int v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int mipid02_parse_rx_ep(struct mipid02_dev *bridge)
{
 struct v4l2_fwnode_endpoint ep = { .bus_type = V4L2_MBUS_CSI2_DPHY };
 struct i2c_client *client = bridge->i2c_client;
 struct device_node *ep_node;
 int ret;


 ep_node = of_graph_get_endpoint_by_regs(bridge->i2c_client->dev.of_node,
      0, 0);
 if (!ep_node) {
  dev_err(&client->dev, "unable to find port0 ep");
  ret = -EINVAL;
  goto error;
 }

 ret = v4l2_fwnode_endpoint_parse(of_fwnode_handle(ep_node), &ep);
 if (ret) {
  dev_err(&client->dev, "Could not parse v4l2 endpoint %d\n",
   ret);
  goto error_of_node_put;
 }


 if (ep.bus.mipi_csi2.num_data_lanes > 2) {
  dev_err(&client->dev, "max supported data lanes is 2 / got %d",
   ep.bus.mipi_csi2.num_data_lanes);
  ret = -EINVAL;
  goto error_of_node_put;
 }


 bridge->rx = ep;


 bridge->asd.match.fwnode =
  fwnode_graph_get_remote_port_parent(of_fwnode_handle(ep_node));
 bridge->asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
 of_node_put(ep_node);

 v4l2_async_notifier_init(&bridge->notifier);
 ret = v4l2_async_notifier_add_subdev(&bridge->notifier, &bridge->asd);
 if (ret) {
  dev_err(&client->dev, "fail to register asd to notifier %d",
   ret);
  fwnode_handle_put(bridge->asd.match.fwnode);
  return ret;
 }
 bridge->notifier.ops = &mipid02_notifier_ops;

 ret = v4l2_async_subdev_notifier_register(&bridge->sd,
        &bridge->notifier);
 if (ret)
  v4l2_async_notifier_cleanup(&bridge->notifier);

 return ret;

error_of_node_put:
 of_node_put(ep_node);
error:

 return ret;
}
