
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 scalar_t__ of_device_is_available (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;

__attribute__((used)) static struct device_node *rcar_drif_bond_enabled(struct platform_device *p)
{
 struct device_node *np;

 np = of_parse_phandle(p->dev.of_node, "renesas,bonding", 0);
 if (np && of_device_is_available(np))
  return np;

 return ((void*)0);
}
