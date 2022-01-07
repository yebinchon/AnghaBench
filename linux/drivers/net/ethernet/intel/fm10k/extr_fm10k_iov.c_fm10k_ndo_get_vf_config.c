
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifla_vf_info {int vf; scalar_t__ qos; int vlan; int mac; scalar_t__ min_tx_rate; int max_tx_rate; } ;
struct fm10k_vf_info {int pf_vid; int mac; int rate; } ;
struct fm10k_iov_data {int num_vfs; struct fm10k_vf_info* vf_info; } ;
struct fm10k_intfc {struct fm10k_iov_data* iov_data; } ;


 int EINVAL ;
 int ether_addr_copy (int ,int ) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

int fm10k_ndo_get_vf_config(struct net_device *netdev,
       int vf_idx, struct ifla_vf_info *ivi)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);
 struct fm10k_iov_data *iov_data = interface->iov_data;
 struct fm10k_vf_info *vf_info;


 if (!iov_data || vf_idx >= iov_data->num_vfs)
  return -EINVAL;

 vf_info = &iov_data->vf_info[vf_idx];

 ivi->vf = vf_idx;
 ivi->max_tx_rate = vf_info->rate;
 ivi->min_tx_rate = 0;
 ether_addr_copy(ivi->mac, vf_info->mac);
 ivi->vlan = vf_info->pf_vid;
 ivi->qos = 0;

 return 0;
}
