
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fwnode_endpoint {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int __v4l2_fwnode_endpoint_parse (struct fwnode_handle*,struct v4l2_fwnode_endpoint*) ;
 int pr_debug (char*) ;

int v4l2_fwnode_endpoint_parse(struct fwnode_handle *fwnode,
          struct v4l2_fwnode_endpoint *vep)
{
 int ret;

 ret = __v4l2_fwnode_endpoint_parse(fwnode, vep);

 pr_debug("===== end V4L2 endpoint properties\n");

 return ret;
}
