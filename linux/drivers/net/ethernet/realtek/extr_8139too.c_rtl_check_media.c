
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8139_private {scalar_t__* phys; int mii; } ;
struct net_device {int dummy; } ;


 int mii_check_media (int *,int ,unsigned int) ;
 struct rtl8139_private* netdev_priv (struct net_device*) ;
 int netif_msg_link (struct rtl8139_private*) ;

__attribute__((used)) static void rtl_check_media (struct net_device *dev, unsigned int init_media)
{
 struct rtl8139_private *tp = netdev_priv(dev);

 if (tp->phys[0] >= 0) {
  mii_check_media(&tp->mii, netif_msg_link(tp), init_media);
 }
}
