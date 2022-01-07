
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct spider_net_card {struct net_device* netdev; TYPE_1__* pdev; scalar_t__ ignore_rx_ramfull; scalar_t__ num_rx_ints; int napi; int aneg_timer; scalar_t__ aneg_count; int tx_timer; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int hw_features; int features; int name; int dev; int irq; int max_mtu; int min_mtu; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int irq; int dev; } ;


 int EIO ;
 int ETH_ALEN ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_LLTX ;
 int NETIF_F_RXCSUM ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int SPIDER_NET_MAX_MTU ;
 int SPIDER_NET_MIN_MTU ;
 int SPIDER_NET_NAPI_WEIGHT ;
 scalar_t__ SPIDER_NET_RX_CSUM_DEFAULT ;
 int dev_err (int *,char*,int) ;
 int memcpy (int ,int const*,int ) ;
 scalar_t__ netif_msg_probe (struct spider_net_card*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 struct device_node* pci_device_to_OF_node (TYPE_1__*) ;
 int pci_set_drvdata (TYPE_1__*,struct net_device*) ;
 int pr_info (char*,int ) ;
 int register_netdev (struct net_device*) ;
 int spider_net_cleanup_tx_ring ;
 int spider_net_link_phy ;
 int spider_net_poll ;
 int spider_net_set_mac (struct net_device*,struct sockaddr*) ;
 int spider_net_setup_netdev_ops (struct net_device*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int
spider_net_setup_netdev(struct spider_net_card *card)
{
 int result;
 struct net_device *netdev = card->netdev;
 struct device_node *dn;
 struct sockaddr addr;
 const u8 *mac;

 SET_NETDEV_DEV(netdev, &card->pdev->dev);

 pci_set_drvdata(card->pdev, netdev);

 timer_setup(&card->tx_timer, spider_net_cleanup_tx_ring, 0);
 netdev->irq = card->pdev->irq;

 card->aneg_count = 0;
 timer_setup(&card->aneg_timer, spider_net_link_phy, 0);

 netif_napi_add(netdev, &card->napi,
         spider_net_poll, SPIDER_NET_NAPI_WEIGHT);

 spider_net_setup_netdev_ops(netdev);

 netdev->hw_features = NETIF_F_RXCSUM | NETIF_F_IP_CSUM;
 if (SPIDER_NET_RX_CSUM_DEFAULT)
  netdev->features |= NETIF_F_RXCSUM;
 netdev->features |= NETIF_F_IP_CSUM | NETIF_F_LLTX;




 netdev->min_mtu = SPIDER_NET_MIN_MTU;
 netdev->max_mtu = SPIDER_NET_MAX_MTU;

 netdev->irq = card->pdev->irq;
 card->num_rx_ints = 0;
 card->ignore_rx_ramfull = 0;

 dn = pci_device_to_OF_node(card->pdev);
 if (!dn)
  return -EIO;

 mac = of_get_property(dn, "local-mac-address", ((void*)0));
 if (!mac)
  return -EIO;
 memcpy(addr.sa_data, mac, ETH_ALEN);

 result = spider_net_set_mac(netdev, &addr);
 if ((result) && (netif_msg_probe(card)))
  dev_err(&card->netdev->dev,
          "Failed to set MAC address: %i\n", result);

 result = register_netdev(netdev);
 if (result) {
  if (netif_msg_probe(card))
   dev_err(&card->netdev->dev,
           "Couldn't register net_device: %i\n", result);
  return result;
 }

 if (netif_msg_probe(card))
  pr_info("Initialized device %s.\n", netdev->name);

 return 0;
}
