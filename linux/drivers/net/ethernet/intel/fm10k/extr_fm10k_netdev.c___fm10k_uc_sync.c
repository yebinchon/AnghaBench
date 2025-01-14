
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct fm10k_intfc {scalar_t__ glort; } ;
typedef int s32 ;


 int EADDRNOTAVAIL ;
 scalar_t__ VLAN_N_VID ;
 scalar_t__ fm10k_find_next_vlan (struct fm10k_intfc*,scalar_t__) ;
 int fm10k_queue_mac_request (struct fm10k_intfc*,scalar_t__,unsigned char const*,scalar_t__,int) ;
 int is_valid_ether_addr (unsigned char const*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int __fm10k_uc_sync(struct net_device *dev,
      const unsigned char *addr, bool sync)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 u16 vid, glort = interface->glort;
 s32 err;

 if (!is_valid_ether_addr(addr))
  return -EADDRNOTAVAIL;

 for (vid = fm10k_find_next_vlan(interface, 0);
      vid < VLAN_N_VID;
      vid = fm10k_find_next_vlan(interface, vid)) {
  err = fm10k_queue_mac_request(interface, glort,
           addr, vid, sync);
  if (err)
   return err;
 }

 return 0;
}
