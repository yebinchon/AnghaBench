
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int flags; int addr_assign_type; int dev_addr; } ;
struct TYPE_2__ {int addr; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {struct fm10k_hw hw; } ;
typedef scalar_t__ s32 ;


 int EADDRNOTAVAIL ;
 int EAGAIN ;
 int IFF_UP ;
 int NET_ADDR_RANDOM ;
 int ether_addr_copy (int ,int ) ;
 int fm10k_mbx_lock (struct fm10k_intfc*) ;
 int fm10k_mbx_unlock (struct fm10k_intfc*) ;
 scalar_t__ fm10k_uc_sync (struct net_device*,int ) ;
 int fm10k_uc_unsync (struct net_device*,int ) ;
 int is_valid_ether_addr (int ) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fm10k_set_mac(struct net_device *dev, void *p)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 struct fm10k_hw *hw = &interface->hw;
 struct sockaddr *addr = p;
 s32 err = 0;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (dev->flags & IFF_UP) {

  fm10k_mbx_lock(interface);

  err = fm10k_uc_sync(dev, addr->sa_data);
  if (!err)
   fm10k_uc_unsync(dev, hw->mac.addr);

  fm10k_mbx_unlock(interface);
 }

 if (!err) {
  ether_addr_copy(dev->dev_addr, addr->sa_data);
  ether_addr_copy(hw->mac.addr, addr->sa_data);
  dev->addr_assign_type &= ~NET_ADDR_RANDOM;
 }


 return err ? -EAGAIN : 0;
}
