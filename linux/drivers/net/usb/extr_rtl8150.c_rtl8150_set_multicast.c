
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int flags; int name; int dev; } ;
typedef int rx_creg ;
typedef int rtl8150_t ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RCR ;
 int async_set_registers (int *,int ,int,int) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_info (int *,char*,int ) ;
 int netdev_mc_empty (struct net_device*) ;
 int * netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void rtl8150_set_multicast(struct net_device *netdev)
{
 rtl8150_t *dev = netdev_priv(netdev);
 u16 rx_creg = 0x9e;

 netif_stop_queue(netdev);
 if (netdev->flags & IFF_PROMISC) {
  rx_creg |= 0x0001;
  dev_info(&netdev->dev, "%s: promiscuous mode\n", netdev->name);
 } else if (!netdev_mc_empty(netdev) ||
     (netdev->flags & IFF_ALLMULTI)) {
  rx_creg &= 0xfffe;
  rx_creg |= 0x0002;
  dev_dbg(&netdev->dev, "%s: allmulti set\n", netdev->name);
 } else {

  rx_creg &= 0x00fc;
 }
 async_set_registers(dev, RCR, sizeof(rx_creg), rx_creg);
 netif_wake_queue(netdev);
}
