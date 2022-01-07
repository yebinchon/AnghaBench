
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device_node {int dummy; } ;


 struct regmap* device_node_get_regmap (struct device_node*,int) ;

struct regmap *device_node_to_regmap(struct device_node *np)
{
 return device_node_get_regmap(np, 0);
}
