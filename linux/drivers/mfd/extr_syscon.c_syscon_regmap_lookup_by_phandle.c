
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 struct regmap* ERR_PTR (int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char const*,int ) ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;

struct regmap *syscon_regmap_lookup_by_phandle(struct device_node *np,
     const char *property)
{
 struct device_node *syscon_np;
 struct regmap *regmap;

 if (property)
  syscon_np = of_parse_phandle(np, property, 0);
 else
  syscon_np = np;

 if (!syscon_np)
  return ERR_PTR(-ENODEV);

 regmap = syscon_node_to_regmap(syscon_np);
 of_node_put(syscon_np);

 return regmap;
}
