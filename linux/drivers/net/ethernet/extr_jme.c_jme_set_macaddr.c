
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct jme_adapter {int macaddr_lock; } ;


 int EBUSY ;
 int jme_set_unicastaddr (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
jme_set_macaddr(struct net_device *netdev, void *p)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 struct sockaddr *addr = p;

 if (netif_running(netdev))
  return -EBUSY;

 spin_lock_bh(&jme->macaddr_lock);
 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 jme_set_unicastaddr(netdev);
 spin_unlock_bh(&jme->macaddr_lock);

 return 0;
}
