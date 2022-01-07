
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_async_notifier {int dummy; } ;
struct TYPE_5__ {struct fwnode_handle* fwnode; } ;
struct TYPE_7__ {int match_type; TYPE_1__ match; } ;
struct TYPE_6__ {TYPE_3__ asd; } ;
struct rcar_drif_sdr {TYPE_2__ ep; TYPE_4__* dev; struct v4l2_async_notifier notifier; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_8__ {int of_node; } ;


 int EINVAL ;
 int V4L2_ASYNC_MATCH_FWNODE ;
 int dev_warn (TYPE_4__*,char*) ;
 struct fwnode_handle* fwnode_graph_get_next_endpoint (int ,int *) ;
 struct fwnode_handle* fwnode_graph_get_remote_port_parent (struct fwnode_handle*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 int of_fwnode_handle (int ) ;
 int rcar_drif_get_ep_properties (struct rcar_drif_sdr*,struct fwnode_handle*) ;
 int v4l2_async_notifier_add_subdev (struct v4l2_async_notifier*,TYPE_3__*) ;
 int v4l2_async_notifier_init (struct v4l2_async_notifier*) ;

__attribute__((used)) static int rcar_drif_parse_subdevs(struct rcar_drif_sdr *sdr)
{
 struct v4l2_async_notifier *notifier = &sdr->notifier;
 struct fwnode_handle *fwnode, *ep;
 int ret;

 v4l2_async_notifier_init(notifier);

 ep = fwnode_graph_get_next_endpoint(of_fwnode_handle(sdr->dev->of_node),
         ((void*)0));
 if (!ep)
  return 0;

 fwnode = fwnode_graph_get_remote_port_parent(ep);
 if (!fwnode) {
  dev_warn(sdr->dev, "bad remote port parent\n");
  fwnode_handle_put(ep);
  return -EINVAL;
 }

 sdr->ep.asd.match.fwnode = fwnode;
 sdr->ep.asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
 ret = v4l2_async_notifier_add_subdev(notifier, &sdr->ep.asd);
 if (ret) {
  fwnode_handle_put(fwnode);
  return ret;
 }


 rcar_drif_get_ep_properties(sdr, ep);

 fwnode_handle_put(fwnode);
 fwnode_handle_put(ep);

 return 0;
}
