
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_port {unsigned int port; int netdev; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;


 int GM_GPCR_RX_ENA ;
 int GM_GPCR_TX_ENA ;
 int GM_GP_CTRL ;
 int LINKLED_OFF ;
 int LNK_LED_REG ;
 int PHY_MARV_INT_MASK ;
 int SK_REG (unsigned int,int ) ;
 int gm_phy_write (struct sky2_hw*,unsigned int,int ,int ) ;
 int gma_read16 (struct sky2_hw*,unsigned int,int ) ;
 int gma_write16 (struct sky2_hw*,unsigned int,int ,int) ;
 int link ;
 int netif_carrier_off (int ) ;
 int netif_info (struct sky2_port*,int ,int ,char*) ;
 int sky2_phy_init (struct sky2_hw*,unsigned int) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_link_down(struct sky2_port *sky2)
{
 struct sky2_hw *hw = sky2->hw;
 unsigned port = sky2->port;
 u16 reg;

 gm_phy_write(hw, port, PHY_MARV_INT_MASK, 0);

 reg = gma_read16(hw, port, GM_GP_CTRL);
 reg &= ~(GM_GPCR_RX_ENA | GM_GPCR_TX_ENA);
 gma_write16(hw, port, GM_GP_CTRL, reg);

 netif_carrier_off(sky2->netdev);


 sky2_write8(hw, SK_REG(port, LNK_LED_REG), LINKLED_OFF);

 netif_info(sky2, link, sky2->netdev, "Link is down\n");

 sky2_phy_init(hw, port);
}
