
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct vf_data_storage {int pf_vlan; int pf_qos; scalar_t__ num_vf_mc_hashes; int last_nack; int flags; } ;
struct igb_adapter {int netdev; struct vf_data_storage* vf_data; } ;


 int IGB_VF_FLAG_PF_SET_MAC ;
 int VLAN_PRIO_SHIFT ;
 int igb_clear_vf_vfta (struct igb_adapter*,size_t) ;
 int igb_set_rx_mode (int ) ;
 int igb_set_vf_vlan (struct igb_adapter*,int,int,size_t) ;
 int igb_set_vf_vlan_strip (struct igb_adapter*,size_t,int) ;
 int igb_set_vmolr (struct igb_adapter*,size_t,int) ;
 int igb_set_vmvir (struct igb_adapter*,int,size_t) ;
 int jiffies ;

__attribute__((used)) static inline void igb_vf_reset(struct igb_adapter *adapter, u32 vf)
{
 struct vf_data_storage *vf_data = &adapter->vf_data[vf];


 vf_data->flags &= IGB_VF_FLAG_PF_SET_MAC;
 vf_data->last_nack = jiffies;


 igb_clear_vf_vfta(adapter, vf);
 igb_set_vf_vlan(adapter, vf_data->pf_vlan, 1, vf);
 igb_set_vmvir(adapter, vf_data->pf_vlan |
          (vf_data->pf_qos << VLAN_PRIO_SHIFT), vf);
 igb_set_vmolr(adapter, vf, !vf_data->pf_vlan);
 igb_set_vf_vlan_strip(adapter, vf, !!(vf_data->pf_vlan));


 adapter->vf_data[vf].num_vf_mc_hashes = 0;


 igb_set_rx_mode(adapter->netdev);
}
