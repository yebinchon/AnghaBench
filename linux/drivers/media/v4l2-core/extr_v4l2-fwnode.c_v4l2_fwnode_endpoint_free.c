
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fwnode_endpoint {int link_frequencies; } ;


 scalar_t__ IS_ERR_OR_NULL (struct v4l2_fwnode_endpoint*) ;
 int kfree (int ) ;

void v4l2_fwnode_endpoint_free(struct v4l2_fwnode_endpoint *vep)
{
 if (IS_ERR_OR_NULL(vep))
  return;

 kfree(vep->link_frequencies);
}
