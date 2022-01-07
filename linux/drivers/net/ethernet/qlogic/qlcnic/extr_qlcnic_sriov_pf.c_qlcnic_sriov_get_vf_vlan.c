
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_vport {int vlan_mode; int pvid; } ;
struct qlcnic_adapter {int netdev; } ;
typedef int __u32 ;


 int MAX_VLAN_ID ;



 int netdev_info (int ,char*,int,int) ;

__attribute__((used)) static __u32 qlcnic_sriov_get_vf_vlan(struct qlcnic_adapter *adapter,
          struct qlcnic_vport *vp, int vf)
{
 __u32 vlan = 0;

 switch (vp->vlan_mode) {
 case 128:
  vlan = vp->pvid;
  break;
 case 130:
  vlan = MAX_VLAN_ID;
  break;
 case 129:
  vlan = 0;
  break;
 default:
  netdev_info(adapter->netdev, "Invalid VLAN mode = %d for VF %d\n",
       vp->vlan_mode, vf);
 }

 return vlan;
}
