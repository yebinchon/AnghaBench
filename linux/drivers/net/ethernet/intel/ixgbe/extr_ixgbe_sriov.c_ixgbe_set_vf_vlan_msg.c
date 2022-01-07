
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct ixgbe_adapter {TYPE_1__* vfinfo; scalar_t__ hw_tcs; } ;
struct TYPE_2__ {scalar_t__ pf_vlan; } ;


 size_t IXGBE_VLVF_VLANID_MASK ;
 size_t IXGBE_VT_MSGINFO_MASK ;
 size_t IXGBE_VT_MSGINFO_SHIFT ;
 int drv ;
 int e_warn (int ,char*,size_t) ;
 int ixgbe_set_vf_vlan (struct ixgbe_adapter*,size_t,size_t,size_t) ;

__attribute__((used)) static int ixgbe_set_vf_vlan_msg(struct ixgbe_adapter *adapter,
     u32 *msgbuf, u32 vf)
{
 u32 add = (msgbuf[0] & IXGBE_VT_MSGINFO_MASK) >> IXGBE_VT_MSGINFO_SHIFT;
 u32 vid = (msgbuf[1] & IXGBE_VLVF_VLANID_MASK);
 u8 tcs = adapter->hw_tcs;

 if (adapter->vfinfo[vf].pf_vlan || tcs) {
  e_warn(drv,
         "VF %d attempted to override administratively set VLAN configuration\n"
         "Reload the VF driver to resume operations\n",
         vf);
  return -1;
 }


 if (!vid && !add)
  return 0;

 return ixgbe_set_vf_vlan(adapter, add, vid, vf);
}
