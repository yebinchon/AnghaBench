
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct fm10k_intfc {int glort; int vid; } ;


 int VLAN_N_VID ;
 int fm10k_queue_mac_request (struct fm10k_intfc*,int,unsigned char const*,int,int) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fm10k_mc_vlan_unsync(struct net_device *netdev,
    const unsigned char *mc_addr)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);
 u16 glort = interface->glort;
 u16 vid = interface->vid;
 bool set = !!(vid / VLAN_N_VID);
 int err;


 vid &= VLAN_N_VID - 1;

 err = fm10k_queue_mac_request(interface, glort, mc_addr, vid, set);
 if (err)
  return err;


 return 1;
}
