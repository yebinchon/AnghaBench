
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_device {int speed; unsigned int duplex; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int SPEED_UNKNOWN ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int slic_configure_mac (struct slic_device*) ;
 int slic_configure_rcv (struct slic_device*) ;
 int slic_configure_xmt (struct slic_device*) ;
 int slic_flush_write (struct slic_device*) ;

__attribute__((used)) static void slic_configure_link_locked(struct slic_device *sdev, int speed,
           unsigned int duplex)
{
 struct net_device *dev = sdev->netdev;

 if (sdev->speed == speed && sdev->duplex == duplex)
  return;

 sdev->speed = speed;
 sdev->duplex = duplex;

 if (sdev->speed == SPEED_UNKNOWN) {
  if (netif_carrier_ok(dev))
   netif_carrier_off(dev);
 } else {

  slic_configure_mac(sdev);
  slic_configure_xmt(sdev);
  slic_configure_rcv(sdev);
  slic_flush_write(sdev);

  if (!netif_carrier_ok(dev))
   netif_carrier_on(dev);
 }
}
