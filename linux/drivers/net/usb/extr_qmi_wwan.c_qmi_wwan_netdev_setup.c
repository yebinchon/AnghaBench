
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int flags; int data; } ;
struct qmi_wwan_state {int flags; } ;
struct net_device {int flags; int mtu; int * header_ops; scalar_t__ addr_len; scalar_t__ hard_header_len; int type; } ;


 int ARPHRD_NONE ;
 int EVENT_NO_IP_ALIGN ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int QMI_WWAN_FLAG_RAWIP ;
 int clear_bit (int ,int *) ;
 int ether_setup (struct net_device*) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int usbnet_change_mtu (struct net_device*,int ) ;

__attribute__((used)) static void qmi_wwan_netdev_setup(struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);
 struct qmi_wwan_state *info = (void *)&dev->data;

 if (info->flags & QMI_WWAN_FLAG_RAWIP) {
  net->header_ops = ((void*)0);
  net->type = ARPHRD_NONE;
  net->hard_header_len = 0;
  net->addr_len = 0;
  net->flags = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
  set_bit(EVENT_NO_IP_ALIGN, &dev->flags);
  netdev_dbg(net, "mode: raw IP\n");
 } else if (!net->header_ops) {
  ether_setup(net);
  clear_bit(EVENT_NO_IP_ALIGN, &dev->flags);
  netdev_dbg(net, "mode: Ethernet\n");
 }


 usbnet_change_mtu(net, net->mtu);
}
