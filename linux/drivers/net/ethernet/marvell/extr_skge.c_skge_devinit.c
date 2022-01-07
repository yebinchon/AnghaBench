
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; } ;
struct TYPE_4__ {int count; } ;
struct skge_port {int duplex; int speed; int wol; int port; int link_timer; int advertising; int flow_control; int autoneg; TYPE_2__ rx_ring; TYPE_1__ tx_ring; int msg_enable; struct skge_hw* hw; struct net_device* netdev; int napi; } ;
struct skge_hw {scalar_t__ regs; struct net_device** dev; TYPE_3__* pdev; } ;
struct net_device {int features; int hw_features; int dev_addr; int max_mtu; int min_mtu; int irq; int watchdog_timeo; int * ethtool_ops; int * netdev_ops; } ;
struct TYPE_6__ {int dev; int irq; } ;


 int AUTONEG_ENABLE ;
 scalar_t__ B2_MAC_1 ;
 int DEFAULT_RX_RING_SIZE ;
 int DEFAULT_TX_RING_SIZE ;
 int ETH_ALEN ;
 int ETH_JUMBO_MTU ;
 int ETH_ZLEN ;
 int FLOW_MODE_SYM_OR_REM ;
 int NAPI_WEIGHT ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int TX_WATCHDOG ;
 int WAKE_MAGIC ;
 struct net_device* alloc_etherdev (int) ;
 int debug ;
 int default_msg ;
 scalar_t__ device_can_wakeup (int *) ;
 int device_set_wakeup_enable (int *,int) ;
 scalar_t__ is_genesis (struct skge_hw*) ;
 int memcpy_fromio (int ,scalar_t__,int ) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int skge_ethtool_ops ;
 int skge_netdev_ops ;
 int skge_poll ;
 int skge_supported_modes (struct skge_hw*) ;
 int timer_setup (int *,int ,int ) ;
 int wol_supported (struct skge_hw*) ;
 int xm_link_timer ;

__attribute__((used)) static struct net_device *skge_devinit(struct skge_hw *hw, int port,
           int highmem)
{
 struct skge_port *skge;
 struct net_device *dev = alloc_etherdev(sizeof(*skge));

 if (!dev)
  return ((void*)0);

 SET_NETDEV_DEV(dev, &hw->pdev->dev);
 dev->netdev_ops = &skge_netdev_ops;
 dev->ethtool_ops = &skge_ethtool_ops;
 dev->watchdog_timeo = TX_WATCHDOG;
 dev->irq = hw->pdev->irq;


 dev->min_mtu = ETH_ZLEN;
 dev->max_mtu = ETH_JUMBO_MTU;

 if (highmem)
  dev->features |= NETIF_F_HIGHDMA;

 skge = netdev_priv(dev);
 netif_napi_add(dev, &skge->napi, skge_poll, NAPI_WEIGHT);
 skge->netdev = dev;
 skge->hw = hw;
 skge->msg_enable = netif_msg_init(debug, default_msg);

 skge->tx_ring.count = DEFAULT_TX_RING_SIZE;
 skge->rx_ring.count = DEFAULT_RX_RING_SIZE;


 skge->autoneg = AUTONEG_ENABLE;
 skge->flow_control = FLOW_MODE_SYM_OR_REM;
 skge->duplex = -1;
 skge->speed = -1;
 skge->advertising = skge_supported_modes(hw);

 if (device_can_wakeup(&hw->pdev->dev)) {
  skge->wol = wol_supported(hw) & WAKE_MAGIC;
  device_set_wakeup_enable(&hw->pdev->dev, skge->wol);
 }

 hw->dev[port] = dev;

 skge->port = port;


 if (is_genesis(hw))
     timer_setup(&skge->link_timer, xm_link_timer, 0);
 else {
  dev->hw_features = NETIF_F_IP_CSUM | NETIF_F_SG |
                     NETIF_F_RXCSUM;
  dev->features |= dev->hw_features;
 }


 memcpy_fromio(dev->dev_addr, hw->regs + B2_MAC_1 + port*8, ETH_ALEN);

 return dev;
}
