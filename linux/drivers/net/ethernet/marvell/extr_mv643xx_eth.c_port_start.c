
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tx_queue {int dummy; } ;
struct rx_queue {int rx_curr_desc; scalar_t__ rx_desc_dma; } ;
struct rx_desc {int dummy; } ;
struct net_device {int features; scalar_t__ phydev; } ;
struct mv643xx_eth_private {int txq_count; int rxq_count; struct rx_queue* rxq; struct net_device* dev; struct tx_queue* txq; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int DO_NOT_FORCE_LINK_FAIL ;
 int FORCE_LINK_PASS ;
 int PORT_CONFIG_EXT ;
 int PORT_SERIAL_CONTROL ;
 int RXQ_CURRENT_DESC_PTR (int) ;
 int SERIAL_PORT_ENABLE ;
 int mv643xx_eth_get_link_ksettings (struct net_device*,struct ethtool_link_ksettings*) ;
 int mv643xx_eth_program_unicast_filter (struct net_device*) ;
 int mv643xx_eth_set_features (struct net_device*,int ) ;
 int mv643xx_eth_set_link_ksettings (struct net_device*,struct ethtool_link_ksettings const*) ;
 int phy_init_hw (scalar_t__) ;
 int phy_start (scalar_t__) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;
 int rxq_enable (struct rx_queue*) ;
 int tx_set_rate (struct mv643xx_eth_private*,int,int) ;
 int txq_reset_hw_ptr (struct tx_queue*) ;
 int txq_set_fixed_prio_mode (struct tx_queue*) ;
 int txq_set_rate (struct tx_queue*,int,int) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static void port_start(struct mv643xx_eth_private *mp)
{
 struct net_device *dev = mp->dev;
 u32 pscr;
 int i;




 if (dev->phydev) {
  struct ethtool_link_ksettings cmd;

  mv643xx_eth_get_link_ksettings(dev, &cmd);
  phy_init_hw(dev->phydev);
  mv643xx_eth_set_link_ksettings(
   dev, (const struct ethtool_link_ksettings *)&cmd);
  phy_start(dev->phydev);
 }




 pscr = rdlp(mp, PORT_SERIAL_CONTROL);

 pscr |= SERIAL_PORT_ENABLE;
 wrlp(mp, PORT_SERIAL_CONTROL, pscr);

 pscr |= DO_NOT_FORCE_LINK_FAIL;
 if (!dev->phydev)
  pscr |= FORCE_LINK_PASS;
 wrlp(mp, PORT_SERIAL_CONTROL, pscr);




 tx_set_rate(mp, 1000000000, 16777216);
 for (i = 0; i < mp->txq_count; i++) {
  struct tx_queue *txq = mp->txq + i;

  txq_reset_hw_ptr(txq);
  txq_set_rate(txq, 1000000000, 16777216);
  txq_set_fixed_prio_mode(txq);
 }






 mv643xx_eth_set_features(mp->dev, mp->dev->features);




 wrlp(mp, PORT_CONFIG_EXT, 0x00000000);




 mv643xx_eth_program_unicast_filter(mp->dev);




 for (i = 0; i < mp->rxq_count; i++) {
  struct rx_queue *rxq = mp->rxq + i;
  u32 addr;

  addr = (u32)rxq->rx_desc_dma;
  addr += rxq->rx_curr_desc * sizeof(struct rx_desc);
  wrlp(mp, RXQ_CURRENT_DESC_PTR(i), addr);

  rxq_enable(rxq);
 }
}
