
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tg3 {int lock; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int ENABLE_ASF ;
 int MAC_ADDR_0_HIGH ;
 int MAC_ADDR_0_LOW ;
 int MAC_ADDR_1_HIGH ;
 int MAC_ADDR_1_LOW ;
 int __tg3_set_mac_addr (struct tg3*,int) ;
 int __tg3_set_rx_mode (struct net_device*) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct tg3* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 scalar_t__ tr32 (int ) ;

__attribute__((used)) static int tg3_set_mac_addr(struct net_device *dev, void *p)
{
 struct tg3 *tp = netdev_priv(dev);
 struct sockaddr *addr = p;
 int err = 0;
 bool skip_mac_1 = 0;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);

 if (!netif_running(dev))
  return 0;

 if (tg3_flag(tp, ENABLE_ASF)) {
  u32 addr0_high, addr0_low, addr1_high, addr1_low;

  addr0_high = tr32(MAC_ADDR_0_HIGH);
  addr0_low = tr32(MAC_ADDR_0_LOW);
  addr1_high = tr32(MAC_ADDR_1_HIGH);
  addr1_low = tr32(MAC_ADDR_1_LOW);


  if ((addr0_high != addr1_high || addr0_low != addr1_low) &&
      !(addr1_high == 0 && addr1_low == 0))
   skip_mac_1 = 1;
 }
 spin_lock_bh(&tp->lock);
 __tg3_set_mac_addr(tp, skip_mac_1);
 __tg3_set_rx_mode(dev);
 spin_unlock_bh(&tp->lock);

 return err;
}
