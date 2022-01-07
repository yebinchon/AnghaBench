
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sky2_port {size_t port; TYPE_1__* hw; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int flags; } ;


 int BMU_DIS_RX_CHKSUM ;
 int BMU_ENA_RX_CHKSUM ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_RXHASH ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int SKY2_HW_NEW_LE ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int rx_set_rss (struct net_device*,int) ;
 int * rxqaddr ;
 int sky2_vlan_mode (struct net_device*,int) ;
 int sky2_write32 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int sky2_set_features(struct net_device *dev, netdev_features_t features)
{
 struct sky2_port *sky2 = netdev_priv(dev);
 netdev_features_t changed = dev->features ^ features;

 if ((changed & NETIF_F_RXCSUM) &&
     !(sky2->hw->flags & SKY2_HW_NEW_LE)) {
  sky2_write32(sky2->hw,
        Q_ADDR(rxqaddr[sky2->port], Q_CSR),
        (features & NETIF_F_RXCSUM)
        ? BMU_ENA_RX_CHKSUM : BMU_DIS_RX_CHKSUM);
 }

 if (changed & NETIF_F_RXHASH)
  rx_set_rss(dev, features);

 if (changed & (NETIF_F_HW_VLAN_CTAG_TX|NETIF_F_HW_VLAN_CTAG_RX))
  sky2_vlan_mode(dev, features);

 return 0;
}
