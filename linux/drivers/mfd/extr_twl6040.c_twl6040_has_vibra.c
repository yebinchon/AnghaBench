
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static bool twl6040_has_vibra(struct device_node *parent)
{
 struct device_node *node;

 node = of_get_child_by_name(parent, "vibra");
 if (node) {
  of_node_put(node);
  return 1;
 }

 return 0;
}
