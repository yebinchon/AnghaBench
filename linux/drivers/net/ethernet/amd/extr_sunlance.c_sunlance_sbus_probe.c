
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 scalar_t__ of_node_name_eq (struct device_node*,char*) ;
 int sparc_lance_probe_one (struct platform_device*,struct platform_device*,struct platform_device*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int sunlance_sbus_probe(struct platform_device *op)
{
 struct platform_device *parent = to_platform_device(op->dev.parent);
 struct device_node *parent_dp = parent->dev.of_node;
 int err;

 if (of_node_name_eq(parent_dp, "ledma")) {
  err = sparc_lance_probe_one(op, parent, ((void*)0));
 } else if (of_node_name_eq(parent_dp, "lebuffer")) {
  err = sparc_lance_probe_one(op, ((void*)0), parent);
 } else
  err = sparc_lance_probe_one(op, ((void*)0), ((void*)0));

 return err;
}
