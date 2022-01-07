
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2 {int leds_save; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int BNX2_EMAC_LED ;
 int BNX2_EMAC_LED_1000MB_OVERRIDE ;
 int BNX2_EMAC_LED_100MB_OVERRIDE ;
 int BNX2_EMAC_LED_10MB_OVERRIDE ;
 int BNX2_EMAC_LED_OVERRIDE ;
 int BNX2_EMAC_LED_TRAFFIC ;
 int BNX2_EMAC_LED_TRAFFIC_OVERRIDE ;
 int BNX2_MISC_CFG ;
 int BNX2_MISC_CFG_LEDMODE_MAC ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;




 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
bnx2_set_phys_id(struct net_device *dev, enum ethtool_phys_id_state state)
{
 struct bnx2 *bp = netdev_priv(dev);

 switch (state) {
 case 131:
  bp->leds_save = BNX2_RD(bp, BNX2_MISC_CFG);
  BNX2_WR(bp, BNX2_MISC_CFG, BNX2_MISC_CFG_LEDMODE_MAC);
  return 1;

 case 128:
  BNX2_WR(bp, BNX2_EMAC_LED, BNX2_EMAC_LED_OVERRIDE |
   BNX2_EMAC_LED_1000MB_OVERRIDE |
   BNX2_EMAC_LED_100MB_OVERRIDE |
   BNX2_EMAC_LED_10MB_OVERRIDE |
   BNX2_EMAC_LED_TRAFFIC_OVERRIDE |
   BNX2_EMAC_LED_TRAFFIC);
  break;

 case 129:
  BNX2_WR(bp, BNX2_EMAC_LED, BNX2_EMAC_LED_OVERRIDE);
  break;

 case 130:
  BNX2_WR(bp, BNX2_EMAC_LED, 0);
  BNX2_WR(bp, BNX2_MISC_CFG, bp->leds_save);
  break;
 }

 return 0;
}
