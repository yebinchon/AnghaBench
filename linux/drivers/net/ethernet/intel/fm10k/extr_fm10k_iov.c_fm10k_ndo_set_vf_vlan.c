
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct fm10k_vf_info {int pf_vid; int vsi; } ;
struct fm10k_iov_data {int num_vfs; struct fm10k_vf_info* vf_info; } ;
struct TYPE_3__ {int (* update_vlan ) (struct fm10k_hw*,int ,int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {struct fm10k_hw hw; struct fm10k_iov_data* iov_data; } ;
typedef scalar_t__ __be16 ;


 int EINVAL ;
 int EPROTONOSUPPORT ;
 int ETH_P_8021Q ;
 int FM10K_VLAN_ALL ;
 int VLAN_VID_MASK ;
 int fm10k_reset_vf_info (struct fm10k_intfc*,struct fm10k_vf_info*) ;
 scalar_t__ htons (int ) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 int stub1 (struct fm10k_hw*,int ,int ,int) ;

int fm10k_ndo_set_vf_vlan(struct net_device *netdev, int vf_idx, u16 vid,
     u8 qos, __be16 vlan_proto)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);
 struct fm10k_iov_data *iov_data = interface->iov_data;
 struct fm10k_hw *hw = &interface->hw;
 struct fm10k_vf_info *vf_info;


 if (!iov_data || vf_idx >= iov_data->num_vfs)
  return -EINVAL;


 if (qos || (vid > (VLAN_VID_MASK - 1)))
  return -EINVAL;


 if (vlan_proto != htons(ETH_P_8021Q))
  return -EPROTONOSUPPORT;

 vf_info = &iov_data->vf_info[vf_idx];


 if (vf_info->pf_vid == vid)
  return 0;


 vf_info->pf_vid = vid;


 hw->mac.ops.update_vlan(hw, FM10K_VLAN_ALL, vf_info->vsi, 0);

 fm10k_reset_vf_info(interface, vf_info);

 return 0;
}
