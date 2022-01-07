
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct igb_adapter {TYPE_1__* vf_data; } ;
struct TYPE_2__ {scalar_t__ pf_vlan; } ;


 size_t E1000_VLVF_VLANID_MASK ;
 size_t E1000_VT_MSGINFO_MASK ;
 size_t E1000_VT_MSGINFO_SHIFT ;
 int igb_set_vf_vlan (struct igb_adapter*,int,int,size_t) ;
 int igb_set_vf_vlan_strip (struct igb_adapter*,size_t,int) ;

__attribute__((used)) static int igb_set_vf_vlan_msg(struct igb_adapter *adapter, u32 *msgbuf, u32 vf)
{
 int add = (msgbuf[0] & E1000_VT_MSGINFO_MASK) >> E1000_VT_MSGINFO_SHIFT;
 int vid = (msgbuf[1] & E1000_VLVF_VLANID_MASK);
 int ret;

 if (adapter->vf_data[vf].pf_vlan)
  return -1;


 if (!vid && !add)
  return 0;

 ret = igb_set_vf_vlan(adapter, vid, !!add, vf);
 if (!ret)
  igb_set_vf_vlan_strip(adapter, vf, !!vid);
 return ret;
}
