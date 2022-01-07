
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {scalar_t__ hard_mtu; } ;
struct net_device {int mtu; scalar_t__ hard_header_len; } ;


 int AX_ACCESS_MAC ;
 int AX_MEDIUM_JUMBO_EN ;
 int AX_MEDIUM_STATUS_MODE ;
 int ax88179_read_cmd (struct usbnet*,int ,int ,int,int,int *) ;
 int ax88179_write_cmd (struct usbnet*,int ,int ,int,int,int *) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int usbnet_update_max_qlen (struct usbnet*) ;

__attribute__((used)) static int ax88179_change_mtu(struct net_device *net, int new_mtu)
{
 struct usbnet *dev = netdev_priv(net);
 u16 tmp16;

 net->mtu = new_mtu;
 dev->hard_mtu = net->mtu + net->hard_header_len;

 if (net->mtu > 1500) {
  ax88179_read_cmd(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
     2, 2, &tmp16);
  tmp16 |= AX_MEDIUM_JUMBO_EN;
  ax88179_write_cmd(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
      2, 2, &tmp16);
 } else {
  ax88179_read_cmd(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
     2, 2, &tmp16);
  tmp16 &= ~AX_MEDIUM_JUMBO_EN;
  ax88179_write_cmd(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
      2, 2, &tmp16);
 }


 usbnet_update_max_qlen(dev);

 return 0;
}
