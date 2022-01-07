
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_async_notifier {int dummy; } ;
struct device {int dummy; } ;
typedef int parse_endpoint_func ;


 int __v4l2_async_notifier_parse_fwnode_ep (struct device*,struct v4l2_async_notifier*,size_t,unsigned int,int,int ) ;

int
v4l2_async_notifier_parse_fwnode_endpoints_by_port(struct device *dev,
         struct v4l2_async_notifier *notifier,
         size_t asd_struct_size,
         unsigned int port,
         parse_endpoint_func parse_endpoint)
{
 return __v4l2_async_notifier_parse_fwnode_ep(dev, notifier,
           asd_struct_size,
           port, 1,
           parse_endpoint);
}
