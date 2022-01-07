
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fwnode_link {int remote_node; int local_node; } ;


 int fwnode_handle_put (int ) ;

void v4l2_fwnode_put_link(struct v4l2_fwnode_link *link)
{
 fwnode_handle_put(link->local_node);
 fwnode_handle_put(link->remote_node);
}
