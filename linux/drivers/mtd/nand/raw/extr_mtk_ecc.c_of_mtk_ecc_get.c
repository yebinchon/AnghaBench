
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ecc {int dummy; } ;
struct device_node {int dummy; } ;


 struct mtk_ecc* mtk_ecc_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

struct mtk_ecc *of_mtk_ecc_get(struct device_node *of_node)
{
 struct mtk_ecc *ecc = ((void*)0);
 struct device_node *np;

 np = of_parse_phandle(of_node, "ecc-engine", 0);
 if (np) {
  ecc = mtk_ecc_get(np);
  of_node_put(np);
 }

 return ecc;
}
