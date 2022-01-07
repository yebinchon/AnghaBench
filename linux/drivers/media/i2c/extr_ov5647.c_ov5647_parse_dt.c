
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fwnode_endpoint {int bus_type; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_graph_get_next_endpoint (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 int v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int ov5647_parse_dt(struct device_node *np)
{
 struct v4l2_fwnode_endpoint bus_cfg = { .bus_type = 0 };
 struct device_node *ep;

 int ret;

 ep = of_graph_get_next_endpoint(np, ((void*)0));
 if (!ep)
  return -EINVAL;

 ret = v4l2_fwnode_endpoint_parse(of_fwnode_handle(ep), &bus_cfg);

 of_node_put(ep);
 return ret;
}
