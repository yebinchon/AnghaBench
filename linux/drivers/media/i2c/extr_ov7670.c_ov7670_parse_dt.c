
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ parallel; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_2__ bus; } ;
struct ov7670_info {int pclk_hb_disable; int mbus_config; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_MBUS_PARALLEL ;
 int dev_err (struct device*,char*) ;
 struct fwnode_handle* dev_fwnode (struct device*) ;
 struct fwnode_handle* fwnode_graph_get_next_endpoint (struct fwnode_handle*,int *) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 scalar_t__ fwnode_property_present (struct fwnode_handle*,char*) ;
 int v4l2_fwnode_endpoint_parse (struct fwnode_handle*,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int ov7670_parse_dt(struct device *dev,
      struct ov7670_info *info)
{
 struct fwnode_handle *fwnode = dev_fwnode(dev);
 struct v4l2_fwnode_endpoint bus_cfg = { .bus_type = 0 };
 struct fwnode_handle *ep;
 int ret;

 if (!fwnode)
  return -EINVAL;

 info->pclk_hb_disable = 0;
 if (fwnode_property_present(fwnode, "ov7670,pclk-hb-disable"))
  info->pclk_hb_disable = 1;

 ep = fwnode_graph_get_next_endpoint(fwnode, ((void*)0));
 if (!ep)
  return -EINVAL;

 ret = v4l2_fwnode_endpoint_parse(ep, &bus_cfg);
 fwnode_handle_put(ep);
 if (ret)
  return ret;

 if (bus_cfg.bus_type != V4L2_MBUS_PARALLEL) {
  dev_err(dev, "Unsupported media bus type\n");
  return ret;
 }
 info->mbus_config = bus_cfg.bus.parallel.flags;

 return 0;
}
