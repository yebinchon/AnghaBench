
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink_link_state {scalar_t__ interface; int speed; scalar_t__ duplex; } ;
struct mtk_sgmii {int * regmap; int ana_rgc3; } ;


 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 scalar_t__ PHY_INTERFACE_MODE_2500BASEX ;
 unsigned int RG_PHY_SPEED_3_125G ;
 unsigned int RG_PHY_SPEED_MASK ;
 unsigned int SGMII_AN_ENABLE ;
 unsigned int SGMII_DUPLEX_FULL ;
 unsigned int SGMII_IF_MODE_MASK ;
 unsigned int SGMII_PHYA_PWD ;
 unsigned int SGMII_SPEED_10 ;
 unsigned int SGMII_SPEED_100 ;
 unsigned int SGMII_SPEED_1000 ;
 int SGMSYS_PCS_CONTROL_1 ;
 int SGMSYS_QPHY_PWR_STATE_CTRL ;
 int SGMSYS_SGMII_MODE ;




 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

int mtk_sgmii_setup_mode_force(struct mtk_sgmii *ss, int id,
          const struct phylink_link_state *state)
{
 unsigned int val;

 if (!ss->regmap[id])
  return -EINVAL;

 regmap_read(ss->regmap[id], ss->ana_rgc3, &val);
 val &= ~RG_PHY_SPEED_MASK;
 if (state->interface == PHY_INTERFACE_MODE_2500BASEX)
  val |= RG_PHY_SPEED_3_125G;
 regmap_write(ss->regmap[id], ss->ana_rgc3, val);


 regmap_read(ss->regmap[id], SGMSYS_PCS_CONTROL_1, &val);
 val &= ~SGMII_AN_ENABLE;
 regmap_write(ss->regmap[id], SGMSYS_PCS_CONTROL_1, val);


 regmap_read(ss->regmap[id], SGMSYS_SGMII_MODE, &val);
 val &= ~SGMII_IF_MODE_MASK;

 switch (state->speed) {
 case 131:
  val |= SGMII_SPEED_10;
  break;
 case 130:
  val |= SGMII_SPEED_100;
  break;
 case 128:
 case 129:
  val |= SGMII_SPEED_1000;
  break;
 };

 if (state->duplex == DUPLEX_FULL)
  val |= SGMII_DUPLEX_FULL;

 regmap_write(ss->regmap[id], SGMSYS_SGMII_MODE, val);


 regmap_read(ss->regmap[id], SGMSYS_QPHY_PWR_STATE_CTRL, &val);
 val &= ~SGMII_PHYA_PWD;
 regmap_write(ss->regmap[id], SGMSYS_QPHY_PWR_STATE_CTRL, val);

 return 0;
}
