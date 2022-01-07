
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fwnode; } ;
struct TYPE_5__ {TYPE_1__ match; int match_type; } ;
struct TYPE_6__ {TYPE_2__ asd; struct device_node* remote_node; } ;
struct stm32_dcmi {TYPE_3__ entity; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int V4L2_ASYNC_MATCH_FWNODE ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_graph_get_next_endpoint (struct device_node*,struct device_node*) ;
 struct device_node* of_graph_get_remote_port_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int dcmi_graph_parse(struct stm32_dcmi *dcmi, struct device_node *node)
{
 struct device_node *ep = ((void*)0);
 struct device_node *remote;

 ep = of_graph_get_next_endpoint(node, ep);
 if (!ep)
  return -EINVAL;

 remote = of_graph_get_remote_port_parent(ep);
 of_node_put(ep);
 if (!remote)
  return -EINVAL;


 dcmi->entity.remote_node = remote;
 dcmi->entity.asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
 dcmi->entity.asd.match.fwnode = of_fwnode_handle(remote);
 return 0;
}
