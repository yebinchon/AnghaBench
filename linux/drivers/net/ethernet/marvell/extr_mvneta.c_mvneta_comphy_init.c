
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int comphy; int phy_interface; } ;


 int PHY_MODE_ETHERNET ;
 int phy_power_on (int ) ;
 int phy_set_mode_ext (int ,int ,int ) ;

__attribute__((used)) static int mvneta_comphy_init(struct mvneta_port *pp)
{
 int ret;

 if (!pp->comphy)
  return 0;

 ret = phy_set_mode_ext(pp->comphy, PHY_MODE_ETHERNET,
          pp->phy_interface);
 if (ret)
  return ret;

 return phy_power_on(pp->comphy);
}
