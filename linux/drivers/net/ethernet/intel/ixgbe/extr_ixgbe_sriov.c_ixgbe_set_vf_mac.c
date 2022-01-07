
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_adapter {TYPE_1__* vfinfo; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int vf_mac_addresses; } ;


 int ETH_ALEN ;
 scalar_t__ ixgbe_add_mac_filter (struct ixgbe_adapter*,unsigned char*,int) ;
 int ixgbe_del_mac_filter (struct ixgbe_adapter*,int ,int) ;
 int memcpy (int ,unsigned char*,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int ixgbe_set_vf_mac(struct ixgbe_adapter *adapter,
       int vf, unsigned char *mac_addr)
{
 s32 retval;

 ixgbe_del_mac_filter(adapter, adapter->vfinfo[vf].vf_mac_addresses, vf);
 retval = ixgbe_add_mac_filter(adapter, mac_addr, vf);
 if (retval >= 0)
  memcpy(adapter->vfinfo[vf].vf_mac_addresses, mac_addr,
         ETH_ALEN);
 else
  memset(adapter->vfinfo[vf].vf_mac_addresses, 0, ETH_ALEN);

 return retval;
}
