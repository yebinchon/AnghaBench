
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_sgmii {int * regmap; } ;
struct mtk_eth {TYPE_1__* soc; struct mtk_sgmii* sgmii; } ;
struct TYPE_2__ {int caps; } ;


 scalar_t__ MTK_HAS_CAPS (int ,int ) ;
 int MTK_SHARED_SGMII ;
 unsigned int SGMII_AN_RESTART ;
 int SGMSYS_PCS_CONTROL_1 ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

void mtk_sgmii_restart_an(struct mtk_eth *eth, int mac_id)
{
 struct mtk_sgmii *ss = eth->sgmii;
 unsigned int val, sid;


 sid = (MTK_HAS_CAPS(eth->soc->caps, MTK_SHARED_SGMII)) ?
        0 : mac_id;

 if (!ss->regmap[sid])
  return;

 regmap_read(ss->regmap[sid], SGMSYS_PCS_CONTROL_1, &val);
 val |= SGMII_AN_RESTART;
 regmap_write(ss->regmap[sid], SGMSYS_PCS_CONTROL_1, val);
}
