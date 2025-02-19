
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;


 int AX_ACCESS_MAC ;
 int AX_RXCOE_CTL ;
 int AX_RXCOE_IP ;
 int AX_RXCOE_TCP ;
 int AX_RXCOE_TCPV6 ;
 int AX_RXCOE_UDP ;
 int AX_RXCOE_UDPV6 ;
 int AX_TXCOE_CTL ;
 int AX_TXCOE_TCP ;
 int AX_TXCOE_TCPV6 ;
 int AX_TXCOE_UDP ;
 int AX_TXCOE_UDPV6 ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int ax88179_read_cmd (struct usbnet*,int ,int ,int,int,int*) ;
 int ax88179_write_cmd (struct usbnet*,int ,int ,int,int,int*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ax88179_set_features(struct net_device *net, netdev_features_t features)
{
 u8 tmp;
 struct usbnet *dev = netdev_priv(net);
 netdev_features_t changed = net->features ^ features;

 if (changed & NETIF_F_IP_CSUM) {
  ax88179_read_cmd(dev, AX_ACCESS_MAC, AX_TXCOE_CTL, 1, 1, &tmp);
  tmp ^= AX_TXCOE_TCP | AX_TXCOE_UDP;
  ax88179_write_cmd(dev, AX_ACCESS_MAC, AX_TXCOE_CTL, 1, 1, &tmp);
 }

 if (changed & NETIF_F_IPV6_CSUM) {
  ax88179_read_cmd(dev, AX_ACCESS_MAC, AX_TXCOE_CTL, 1, 1, &tmp);
  tmp ^= AX_TXCOE_TCPV6 | AX_TXCOE_UDPV6;
  ax88179_write_cmd(dev, AX_ACCESS_MAC, AX_TXCOE_CTL, 1, 1, &tmp);
 }

 if (changed & NETIF_F_RXCSUM) {
  ax88179_read_cmd(dev, AX_ACCESS_MAC, AX_RXCOE_CTL, 1, 1, &tmp);
  tmp ^= AX_RXCOE_IP | AX_RXCOE_TCP | AX_RXCOE_UDP |
         AX_RXCOE_TCPV6 | AX_RXCOE_UDPV6;
  ax88179_write_cmd(dev, AX_ACCESS_MAC, AX_RXCOE_CTL, 1, 1, &tmp);
 }

 return 0;
}
