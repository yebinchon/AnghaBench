
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev; } ;
struct xvtc_device {void* has_generator; void* has_detector; TYPE_2__ xvip; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 void* of_property_read_bool (struct device_node*,char*) ;

__attribute__((used)) static int xvtc_parse_of(struct xvtc_device *xvtc)
{
 struct device_node *node = xvtc->xvip.dev->of_node;

 xvtc->has_detector = of_property_read_bool(node, "xlnx,detector");
 xvtc->has_generator = of_property_read_bool(node, "xlnx,generator");

 return 0;
}
