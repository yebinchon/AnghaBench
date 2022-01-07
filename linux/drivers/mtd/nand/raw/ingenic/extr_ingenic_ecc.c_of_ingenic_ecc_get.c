
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_ecc {int dummy; } ;
struct device_node {int dummy; } ;


 struct ingenic_ecc* ingenic_ecc_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

struct ingenic_ecc *of_ingenic_ecc_get(struct device_node *of_node)
{
 struct ingenic_ecc *ecc = ((void*)0);
 struct device_node *np;

 np = of_parse_phandle(of_node, "ecc-engine", 0);





 if (!np)
  np = of_parse_phandle(of_node, "ingenic,bch-controller", 0);

 if (np) {
  ecc = ingenic_ecc_get(np);
  of_node_put(np);
 }
 return ecc;
}
