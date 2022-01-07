
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct igb_adapter {TYPE_1__* vf_data; } ;
struct TYPE_2__ {scalar_t__ pf_qos; scalar_t__ pf_vlan; } ;


 int igb_set_vf_vlan (struct igb_adapter*,scalar_t__,int,int) ;
 int igb_set_vf_vlan_strip (struct igb_adapter*,int,int) ;
 int igb_set_vmolr (struct igb_adapter*,int,int) ;
 int igb_set_vmvir (struct igb_adapter*,int ,int) ;

__attribute__((used)) static int igb_disable_port_vlan(struct igb_adapter *adapter, int vf)
{

 igb_set_vf_vlan(adapter, 0, 1, vf);

 igb_set_vmvir(adapter, 0, vf);
 igb_set_vmolr(adapter, vf, 1);


 if (adapter->vf_data[vf].pf_vlan)
  igb_set_vf_vlan(adapter, adapter->vf_data[vf].pf_vlan,
    0, vf);

 adapter->vf_data[vf].pf_vlan = 0;
 adapter->vf_data[vf].pf_qos = 0;
 igb_set_vf_vlan_strip(adapter, vf, 0);

 return 0;
}
