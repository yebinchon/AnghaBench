
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int irq; int dev; } ;
struct net_device {int hw_features; int vlan_features; int features; int dev_addr; int max_mtu; int min_mtu; int priv_flags; int * ethtool_ops; int watchdog_timeo; int * netdev_ops; } ;
struct bnx2 {int flags; int regview; int mac_addr; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ BNX2_CHIP (struct bnx2*) ;
 scalar_t__ BNX2_CHIP_5709 ;
 int BNX2_CHIP_ID (struct bnx2*) ;
 int BNX2_FLAG_CAN_KEEP_VLAN ;
 int ENOMEM ;
 int ETH_ALEN ;
 int IFF_UNICAST_FLT ;
 int MAX_ETHERNET_JUMBO_PACKET_SIZE ;
 int MIN_ETHERNET_PACKET_SIZE ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_RXHASH ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NETIF_F_TSO_ECN ;
 int TX_MAX_RINGS ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int bnx2_bus_string (struct bnx2*,char*) ;
 int bnx2_ethtool_ops ;
 int bnx2_free_stats_blk (struct net_device*) ;
 int bnx2_init_board (struct pci_dev*,struct net_device*) ;
 int bnx2_netdev_ops ;
 int bnx2_wait_dma_complete (struct bnx2*) ;
 TYPE_1__* board_info ;
 int dev_err (int *,char*) ;
 int free_netdev (struct net_device*) ;
 scalar_t__ is_kdump_kernel () ;
 int memcpy (int ,int ,int ) ;
 int netdev_info (struct net_device*,char*,int ,int,int,int ,long,int ,int ) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pr_info (char*,int ) ;
 int register_netdev (struct net_device*) ;
 int version ;

__attribute__((used)) static int
bnx2_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 static int version_printed = 0;
 struct net_device *dev;
 struct bnx2 *bp;
 int rc;
 char str[40];

 if (version_printed++ == 0)
  pr_info("%s", version);


 dev = alloc_etherdev_mq(sizeof(*bp), TX_MAX_RINGS);
 if (!dev)
  return -ENOMEM;

 rc = bnx2_init_board(pdev, dev);
 if (rc < 0)
  goto err_free;

 dev->netdev_ops = &bnx2_netdev_ops;
 dev->watchdog_timeo = TX_TIMEOUT;
 dev->ethtool_ops = &bnx2_ethtool_ops;

 bp = netdev_priv(dev);

 pci_set_drvdata(pdev, dev);







 if (is_kdump_kernel())
  bnx2_wait_dma_complete(bp);

 memcpy(dev->dev_addr, bp->mac_addr, ETH_ALEN);

 dev->hw_features = NETIF_F_IP_CSUM | NETIF_F_SG |
  NETIF_F_TSO | NETIF_F_TSO_ECN |
  NETIF_F_RXHASH | NETIF_F_RXCSUM;

 if (BNX2_CHIP(bp) == BNX2_CHIP_5709)
  dev->hw_features |= NETIF_F_IPV6_CSUM | NETIF_F_TSO6;

 dev->vlan_features = dev->hw_features;
 dev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX;
 dev->features |= dev->hw_features;
 dev->priv_flags |= IFF_UNICAST_FLT;
 dev->min_mtu = MIN_ETHERNET_PACKET_SIZE;
 dev->max_mtu = MAX_ETHERNET_JUMBO_PACKET_SIZE;

 if (!(bp->flags & BNX2_FLAG_CAN_KEEP_VLAN))
  dev->hw_features &= ~NETIF_F_HW_VLAN_CTAG_RX;

 if ((rc = register_netdev(dev))) {
  dev_err(&pdev->dev, "Cannot register net device\n");
  goto error;
 }

 netdev_info(dev, "%s (%c%d) %s found at mem %lx, IRQ %d, "
      "node addr %pM\n", board_info[ent->driver_data].name,
      ((BNX2_CHIP_ID(bp) & 0xf000) >> 12) + 'A',
      ((BNX2_CHIP_ID(bp) & 0x0ff0) >> 4),
      bnx2_bus_string(bp, str), (long)pci_resource_start(pdev, 0),
      pdev->irq, dev->dev_addr);

 return 0;

error:
 pci_iounmap(pdev, bp->regview);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
err_free:
 bnx2_free_stats_blk(dev);
 free_netdev(dev);
 return rc;
}
