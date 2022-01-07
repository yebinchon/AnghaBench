
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parallel; } ;
struct v4l2_fwnode_endpoint {TYPE_1__ bus; int bus_type; } ;
struct TYPE_5__ {int * ops; } ;
struct sun4i_csi {TYPE_2__ notifier; int asd; int bus; int dev; } ;
struct fwnode_handle {int dummy; } ;


 int EINVAL ;
 int FWNODE_GRAPH_ENDPOINT_NEXT ;
 int V4L2_MBUS_PARALLEL ;
 int dev_fwnode (int ) ;
 struct fwnode_handle* fwnode_graph_get_endpoint_by_id (int ,int ,int ,int ) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 int sun4i_csi_notify_ops ;
 int v4l2_async_notifier_add_fwnode_remote_subdev (TYPE_2__*,struct fwnode_handle*,int *) ;
 int v4l2_async_notifier_init (TYPE_2__*) ;
 int v4l2_fwnode_endpoint_parse (struct fwnode_handle*,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int sun4i_csi_notifier_init(struct sun4i_csi *csi)
{
 struct v4l2_fwnode_endpoint vep = {
  .bus_type = V4L2_MBUS_PARALLEL,
 };
 struct fwnode_handle *ep;
 int ret;

 v4l2_async_notifier_init(&csi->notifier);

 ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(csi->dev), 0, 0,
          FWNODE_GRAPH_ENDPOINT_NEXT);
 if (!ep)
  return -EINVAL;

 ret = v4l2_fwnode_endpoint_parse(ep, &vep);
 if (ret)
  goto out;

 csi->bus = vep.bus.parallel;

 ret = v4l2_async_notifier_add_fwnode_remote_subdev(&csi->notifier,
          ep, &csi->asd);
 if (ret)
  goto out;

 csi->notifier.ops = &sun4i_csi_notify_ops;

out:
 fwnode_handle_put(ep);
 return ret;
}
