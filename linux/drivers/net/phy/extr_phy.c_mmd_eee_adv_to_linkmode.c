
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ETHTOOL_LINK_MODE_10000baseKR_Full_BIT ;
 int ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT ;
 int ETHTOOL_LINK_MODE_10000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_1000baseKX_Full_BIT ;
 int ETHTOOL_LINK_MODE_1000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_100baseT_Full_BIT ;
 int MDIO_EEE_1000KX ;
 int MDIO_EEE_1000T ;
 int MDIO_EEE_100TX ;
 int MDIO_EEE_10GKR ;
 int MDIO_EEE_10GKX4 ;
 int MDIO_EEE_10GT ;
 int linkmode_set_bit (int ,unsigned long*) ;
 int linkmode_zero (unsigned long*) ;

__attribute__((used)) static void mmd_eee_adv_to_linkmode(unsigned long *advertising, u16 eee_adv)
{
 linkmode_zero(advertising);

 if (eee_adv & MDIO_EEE_100TX)
  linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
     advertising);
 if (eee_adv & MDIO_EEE_1000T)
  linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
     advertising);
 if (eee_adv & MDIO_EEE_10GT)
  linkmode_set_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
     advertising);
 if (eee_adv & MDIO_EEE_1000KX)
  linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
     advertising);
 if (eee_adv & MDIO_EEE_10GKX4)
  linkmode_set_bit(ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
     advertising);
 if (eee_adv & MDIO_EEE_10GKR)
  linkmode_set_bit(ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
     advertising);
}
