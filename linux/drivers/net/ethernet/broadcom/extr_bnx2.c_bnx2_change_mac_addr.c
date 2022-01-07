
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct bnx2 {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int bnx2_set_mac_addr (struct bnx2*,int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int
bnx2_change_mac_addr(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;
 struct bnx2 *bp = netdev_priv(dev);

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 if (netif_running(dev))
  bnx2_set_mac_addr(bp, bp->dev->dev_addr, 0);

 return 0;
}
