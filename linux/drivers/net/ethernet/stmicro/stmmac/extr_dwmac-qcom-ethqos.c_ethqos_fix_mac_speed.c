
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_ethqos {unsigned int speed; } ;


 int ethqos_configure (struct qcom_ethqos*) ;
 int ethqos_update_rgmii_clk (struct qcom_ethqos*,unsigned int) ;

__attribute__((used)) static void ethqos_fix_mac_speed(void *priv, unsigned int speed)
{
 struct qcom_ethqos *ethqos = priv;

 ethqos->speed = speed;
 ethqos_update_rgmii_clk(ethqos, speed);
 ethqos_configure(ethqos);
}
