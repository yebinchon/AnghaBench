
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_ethqos {int rgmii_clk_rate; int rgmii_clk; } ;


 int RGMII_1000_NOM_CLK_FREQ ;
 int RGMII_ID_MODE_100_LOW_SVS_CLK_FREQ ;
 int RGMII_ID_MODE_10_LOW_SVS_CLK_FREQ ;



 int clk_set_rate (int ,int ) ;

__attribute__((used)) static void
ethqos_update_rgmii_clk(struct qcom_ethqos *ethqos, unsigned int speed)
{
 switch (speed) {
 case 128:
  ethqos->rgmii_clk_rate = RGMII_1000_NOM_CLK_FREQ;
  break;

 case 129:
  ethqos->rgmii_clk_rate = RGMII_ID_MODE_100_LOW_SVS_CLK_FREQ;
  break;

 case 130:
  ethqos->rgmii_clk_rate = RGMII_ID_MODE_10_LOW_SVS_CLK_FREQ;
  break;
 }

 clk_set_rate(ethqos->rgmii_clk, ethqos->rgmii_clk_rate);
}
