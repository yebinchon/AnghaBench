
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucc_geth_private {int lock; TYPE_1__* ug_regs; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int * dev_addr; int addr_len; } ;
struct TYPE_2__ {int macstnaddr2; int macstnaddr1; } ;


 int EADDRNOTAVAIL ;
 int init_mac_station_addr_regs (int ,int ,int ,int ,int ,int ,int *,int *) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int *,int ,int ) ;
 struct ucc_geth_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int ucc_geth_set_mac_addr(struct net_device *dev, void *p)
{
 struct ucc_geth_private *ugeth = netdev_priv(dev);
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);





 if (!netif_running(dev))
  return 0;

 spin_lock_irq(&ugeth->lock);
 init_mac_station_addr_regs(dev->dev_addr[0],
       dev->dev_addr[1],
       dev->dev_addr[2],
       dev->dev_addr[3],
       dev->dev_addr[4],
       dev->dev_addr[5],
       &ugeth->ug_regs->macstnaddr1,
       &ugeth->ug_regs->macstnaddr2);
 spin_unlock_irq(&ugeth->lock);

 return 0;
}
