
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct enic_port_profile {int vf_mac; } ;
struct enic {int dummy; } ;


 int EINVAL ;
 int ENIC_DEVCMD_PROXY_BY_INDEX (int,int,struct enic*,int ,int *) ;
 int ENIC_PP_BY_INDEX (struct enic*,int,struct enic_port_profile*,int*) ;
 int ETH_ALEN ;
 int PORT_SELF_VF ;
 int enic_dev_status_to_errno (int) ;
 scalar_t__ is_valid_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int memcpy (int ,int *,int ) ;
 struct enic* netdev_priv (struct net_device*) ;
 int vnic_dev_set_mac_addr ;

__attribute__((used)) static int enic_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
{
 struct enic *enic = netdev_priv(netdev);
 struct enic_port_profile *pp;
 int err;

 ENIC_PP_BY_INDEX(enic, vf, pp, &err);
 if (err)
  return err;

 if (is_valid_ether_addr(mac) || is_zero_ether_addr(mac)) {
  if (vf == PORT_SELF_VF) {
   memcpy(pp->vf_mac, mac, ETH_ALEN);
   return 0;
  } else {



   ENIC_DEVCMD_PROXY_BY_INDEX(vf, err, enic,
    vnic_dev_set_mac_addr, mac);
   return enic_dev_status_to_errno(err);
  }
 } else
  return -EINVAL;
}
