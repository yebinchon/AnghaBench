
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int sa_data; int member_0; } ;
struct TYPE_6__ {int syncp; } ;
struct TYPE_5__ {int syncp; } ;
struct sky2_port {int flags; int duplex; int speed; int wol; unsigned int port; int rx_pending; int tx_ring_size; int tx_pending; int phy_lock; int advertising; int flow_mode; TYPE_2__ rx_stats; TYPE_1__ tx_stats; int msg_enable; struct sky2_hw* hw; struct net_device* netdev; } ;
struct sky2_hw {scalar_t__ chip_id; int flags; scalar_t__ regs; TYPE_3__* pdev; struct net_device** dev; } ;
struct net_device {int hw_features; int features; int dev_addr; int max_mtu; int min_mtu; int vlan_features; int * netdev_ops; int watchdog_timeo; int * ethtool_ops; int irq; } ;
struct TYPE_8__ {int of_node; } ;
struct TYPE_7__ {TYPE_4__ dev; int irq; } ;


 int AF_UNSPEC ;
 scalar_t__ B2_MAC_1 ;
 scalar_t__ CHIP_ID_YUKON_FE ;
 scalar_t__ CHIP_ID_YUKON_FE_P ;
 scalar_t__ CHIP_ID_YUKON_XL ;
 int ETH_ALEN ;
 int ETH_DATA_LEN ;
 int ETH_JUMBO_MTU ;
 int ETH_ZLEN ;
 int FC_BOTH ;
 int IS_ERR (void const*) ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_RXHASH ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int RX_DEF_PENDING ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_4__*) ;
 int SKY2_FLAG_AUTO_PAUSE ;
 int SKY2_FLAG_AUTO_SPEED ;
 int SKY2_HW_RSS_BROKEN ;
 int SKY2_HW_VLAN_BROKEN ;
 int SKY2_VLAN_OFFLOADS ;
 int TX_DEF_PENDING ;
 int TX_WATCHDOG ;
 struct net_device* alloc_etherdev (int) ;
 int debug ;
 int default_msg ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,void const*) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int memcpy_fromio (int ,scalar_t__,int ) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_msg_init (int ,int ) ;
 void* of_get_mac_address (int ) ;
 int roundup_ring_size (int ) ;
 int sky2_ethtool_ops ;
 int * sky2_netdev_ops ;
 scalar_t__ sky2_set_mac_address (struct net_device*,struct sockaddr*) ;
 int sky2_supported_modes (struct sky2_hw*) ;
 int spin_lock_init (int *) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static struct net_device *sky2_init_netdev(struct sky2_hw *hw, unsigned port,
        int highmem, int wol)
{
 struct sky2_port *sky2;
 struct net_device *dev = alloc_etherdev(sizeof(*sky2));
 const void *iap;

 if (!dev)
  return ((void*)0);

 SET_NETDEV_DEV(dev, &hw->pdev->dev);
 dev->irq = hw->pdev->irq;
 dev->ethtool_ops = &sky2_ethtool_ops;
 dev->watchdog_timeo = TX_WATCHDOG;
 dev->netdev_ops = &sky2_netdev_ops[port];

 sky2 = netdev_priv(dev);
 sky2->netdev = dev;
 sky2->hw = hw;
 sky2->msg_enable = netif_msg_init(debug, default_msg);

 u64_stats_init(&sky2->tx_stats.syncp);
 u64_stats_init(&sky2->rx_stats.syncp);


 sky2->flags = SKY2_FLAG_AUTO_SPEED | SKY2_FLAG_AUTO_PAUSE;
 if (hw->chip_id != CHIP_ID_YUKON_XL)
  dev->hw_features |= NETIF_F_RXCSUM;

 sky2->flow_mode = FC_BOTH;

 sky2->duplex = -1;
 sky2->speed = -1;
 sky2->advertising = sky2_supported_modes(hw);
 sky2->wol = wol;

 spin_lock_init(&sky2->phy_lock);

 sky2->tx_pending = TX_DEF_PENDING;
 sky2->tx_ring_size = roundup_ring_size(TX_DEF_PENDING);
 sky2->rx_pending = RX_DEF_PENDING;

 hw->dev[port] = dev;

 sky2->port = port;

 dev->hw_features |= NETIF_F_IP_CSUM | NETIF_F_SG | NETIF_F_TSO;

 if (highmem)
  dev->features |= NETIF_F_HIGHDMA;


 if (!(hw->flags & SKY2_HW_RSS_BROKEN))
  dev->hw_features |= NETIF_F_RXHASH;

 if (!(hw->flags & SKY2_HW_VLAN_BROKEN)) {
  dev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX |
        NETIF_F_HW_VLAN_CTAG_RX;
  dev->vlan_features |= SKY2_VLAN_OFFLOADS;
 }

 dev->features |= dev->hw_features;


 dev->min_mtu = ETH_ZLEN;
 if (hw->chip_id == CHIP_ID_YUKON_FE ||
     hw->chip_id == CHIP_ID_YUKON_FE_P)
  dev->max_mtu = ETH_DATA_LEN;
 else
  dev->max_mtu = ETH_JUMBO_MTU;





 iap = of_get_mac_address(hw->pdev->dev.of_node);
 if (!IS_ERR(iap))
  ether_addr_copy(dev->dev_addr, iap);
 else
  memcpy_fromio(dev->dev_addr, hw->regs + B2_MAC_1 + port * 8,
         ETH_ALEN);


 if (!is_valid_ether_addr(dev->dev_addr)) {
  struct sockaddr sa = { AF_UNSPEC };

  netdev_warn(dev,
       "Invalid MAC address, defaulting to random\n");
  eth_hw_addr_random(dev);
  memcpy(sa.sa_data, dev->dev_addr, ETH_ALEN);
  if (sky2_set_mac_address(dev, &sa))
   netdev_warn(dev, "Failed to set MAC address.\n");
 }

 return dev;
}
