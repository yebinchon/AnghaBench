
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int speed; int pause; scalar_t__ duplex; scalar_t__ asym_pause; int link; } ;
struct net_device {struct phy_device* phydev; } ;
struct ftgmac100 {int rx_pause; int tx_pause; int cur_speed; scalar_t__ cur_duplex; int reset_task; scalar_t__ base; scalar_t__ aneg_pause; } ;


 scalar_t__ FTGMAC100_OFFSET_IER ;
 int iowrite32 (int ,scalar_t__) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void ftgmac100_adjust_link(struct net_device *netdev)
{
 struct ftgmac100 *priv = netdev_priv(netdev);
 struct phy_device *phydev = netdev->phydev;
 bool tx_pause, rx_pause;
 int new_speed;


 if (!phydev->link)
  new_speed = 0;
 else
  new_speed = phydev->speed;


 if (priv->aneg_pause) {
  rx_pause = tx_pause = phydev->pause;
  if (phydev->asym_pause)
   tx_pause = !rx_pause;
 } else {
  rx_pause = priv->rx_pause;
  tx_pause = priv->tx_pause;
 }


 if (phydev->speed == priv->cur_speed &&
     phydev->duplex == priv->cur_duplex &&
     rx_pause == priv->rx_pause &&
     tx_pause == priv->tx_pause)
  return;




 if (new_speed || priv->cur_speed)
  phy_print_status(phydev);

 priv->cur_speed = new_speed;
 priv->cur_duplex = phydev->duplex;
 priv->rx_pause = rx_pause;
 priv->tx_pause = tx_pause;


 if (!new_speed)
  return;


 iowrite32(0, priv->base + FTGMAC100_OFFSET_IER);


 schedule_work(&priv->reset_task);
}
