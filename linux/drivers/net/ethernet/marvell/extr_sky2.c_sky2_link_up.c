
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {unsigned int port; scalar_t__ duplex; size_t flow_status; int speed; int netdev; struct sky2_hw* hw; } ;
struct sky2_hw {int watchdog_timer; } ;


 scalar_t__ DUPLEX_FULL ;




 int LINKLED_BLINK_OFF ;
 int LINKLED_LINKSYNC_OFF ;
 int LINKLED_ON ;
 int LNK_LED_REG ;
 int PHY_MARV_INT_MASK ;
 int PHY_M_DEF_MSK ;
 int SK_REG (unsigned int,int ) ;
 int gm_phy_write (struct sky2_hw*,unsigned int,int ,int ) ;
 scalar_t__ jiffies ;
 int link ;
 int mod_timer (int *,scalar_t__) ;
 int netif_carrier_on (int ) ;
 int netif_info (struct sky2_port*,int ,int ,char*,int ,char*,char const*) ;
 int sky2_enable_rx_tx (struct sky2_port*) ;
 int sky2_set_ipg (struct sky2_port*) ;
 int sky2_write8 (struct sky2_hw*,int ,int) ;

__attribute__((used)) static void sky2_link_up(struct sky2_port *sky2)
{
 struct sky2_hw *hw = sky2->hw;
 unsigned port = sky2->port;
 static const char *fc_name[] = {
  [130] = "none",
  [128] = "tx",
  [129] = "rx",
  [131] = "both",
 };

 sky2_set_ipg(sky2);

 sky2_enable_rx_tx(sky2);

 gm_phy_write(hw, port, PHY_MARV_INT_MASK, PHY_M_DEF_MSK);

 netif_carrier_on(sky2->netdev);

 mod_timer(&hw->watchdog_timer, jiffies + 1);


 sky2_write8(hw, SK_REG(port, LNK_LED_REG),
      LINKLED_ON | LINKLED_BLINK_OFF | LINKLED_LINKSYNC_OFF);

 netif_info(sky2, link, sky2->netdev,
     "Link is up at %d Mbps, %s duplex, flow control %s\n",
     sky2->speed,
     sky2->duplex == DUPLEX_FULL ? "full" : "half",
     fc_name[sky2->flow_status]);
}
