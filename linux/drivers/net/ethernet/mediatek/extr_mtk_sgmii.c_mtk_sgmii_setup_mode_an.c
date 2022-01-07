
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sgmii {int * regmap; } ;


 int EINVAL ;
 unsigned int SGMII_AN_RESTART ;
 unsigned int SGMII_LINK_TIMER_DEFAULT ;
 unsigned int SGMII_PHYA_PWD ;
 unsigned int SGMII_REMOTE_FAULT_DIS ;
 int SGMSYS_PCS_CONTROL_1 ;
 int SGMSYS_PCS_LINK_TIMER ;
 int SGMSYS_QPHY_PWR_STATE_CTRL ;
 int SGMSYS_SGMII_MODE ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

int mtk_sgmii_setup_mode_an(struct mtk_sgmii *ss, int id)
{
 unsigned int val;

 if (!ss->regmap[id])
  return -EINVAL;


 regmap_write(ss->regmap[id], SGMSYS_PCS_LINK_TIMER,
       SGMII_LINK_TIMER_DEFAULT);

 regmap_read(ss->regmap[id], SGMSYS_SGMII_MODE, &val);
 val |= SGMII_REMOTE_FAULT_DIS;
 regmap_write(ss->regmap[id], SGMSYS_SGMII_MODE, val);

 regmap_read(ss->regmap[id], SGMSYS_PCS_CONTROL_1, &val);
 val |= SGMII_AN_RESTART;
 regmap_write(ss->regmap[id], SGMSYS_PCS_CONTROL_1, val);

 regmap_read(ss->regmap[id], SGMSYS_QPHY_PWR_STATE_CTRL, &val);
 val &= ~SGMII_PHYA_PWD;
 regmap_write(ss->regmap[id], SGMSYS_QPHY_PWR_STATE_CTRL, val);

 return 0;
}
