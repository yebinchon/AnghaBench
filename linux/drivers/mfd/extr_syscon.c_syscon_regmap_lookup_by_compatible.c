
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 struct regmap* ERR_PTR (int ) ;
 struct device_node* of_find_compatible_node (int *,int *,char const*) ;
 int of_node_put (struct device_node*) ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;

struct regmap *syscon_regmap_lookup_by_compatible(const char *s)
{
 struct device_node *syscon_np;
 struct regmap *regmap;

 syscon_np = of_find_compatible_node(((void*)0), ((void*)0), s);
 if (!syscon_np)
  return ERR_PTR(-ENODEV);

 regmap = syscon_node_to_regmap(syscon_np);
 of_node_put(syscon_np);

 return regmap;
}
