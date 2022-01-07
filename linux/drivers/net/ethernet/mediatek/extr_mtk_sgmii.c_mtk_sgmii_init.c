
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_sgmii {int * regmap; int ana_rgc3; } ;
struct device_node {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int MTK_MAX_DEVS ;
 int PTR_ERR (int ) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;
 int syscon_node_to_regmap (struct device_node*) ;

int mtk_sgmii_init(struct mtk_sgmii *ss, struct device_node *r, u32 ana_rgc3)
{
 struct device_node *np;
 int i;

 ss->ana_rgc3 = ana_rgc3;

 for (i = 0; i < MTK_MAX_DEVS; i++) {
  np = of_parse_phandle(r, "mediatek,sgmiisys", i);
  if (!np)
   break;

  ss->regmap[i] = syscon_node_to_regmap(np);
  if (IS_ERR(ss->regmap[i]))
   return PTR_ERR(ss->regmap[i]);
 }

 return 0;
}
