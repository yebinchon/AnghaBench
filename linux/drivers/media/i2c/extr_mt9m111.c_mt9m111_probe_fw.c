
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ parallel; } ;
struct v4l2_fwnode_endpoint {TYPE_2__ bus; int bus_type; } ;
struct mt9m111 {int pclk_sample; } ;
struct i2c_client {int dev; } ;
struct fwnode_handle {int dummy; } ;


 int EINVAL ;
 int V4L2_MBUS_PARALLEL ;
 int V4L2_MBUS_PCLK_SAMPLE_RISING ;
 int dev_fwnode (int *) ;
 struct fwnode_handle* fwnode_graph_get_next_endpoint (int ,int *) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 int v4l2_fwnode_endpoint_parse (struct fwnode_handle*,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int mt9m111_probe_fw(struct i2c_client *client, struct mt9m111 *mt9m111)
{
 struct v4l2_fwnode_endpoint bus_cfg = {
  .bus_type = V4L2_MBUS_PARALLEL
 };
 struct fwnode_handle *np;
 int ret;

 np = fwnode_graph_get_next_endpoint(dev_fwnode(&client->dev), ((void*)0));
 if (!np)
  return -EINVAL;

 ret = v4l2_fwnode_endpoint_parse(np, &bus_cfg);
 if (ret)
  goto out_put_fw;

 mt9m111->pclk_sample = !!(bus_cfg.bus.parallel.flags &
      V4L2_MBUS_PCLK_SAMPLE_RISING);

out_put_fw:
 fwnode_handle_put(np);
 return ret;
}
