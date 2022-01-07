
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 struct regmap* ERR_PTR (int ) ;
 struct regmap* device_node_get_regmap (struct device_node*,int) ;
 int of_device_is_compatible (struct device_node*,char*) ;

struct regmap *syscon_node_to_regmap(struct device_node *np)
{
 if (!of_device_is_compatible(np, "syscon"))
  return ERR_PTR(-EINVAL);

 return device_node_get_regmap(np, 1);
}
