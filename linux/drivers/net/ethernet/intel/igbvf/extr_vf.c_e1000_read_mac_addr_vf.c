
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int perm_addr; int addr; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int E1000_SUCCESS ;
 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static s32 e1000_read_mac_addr_vf(struct e1000_hw *hw)
{
 memcpy(hw->mac.addr, hw->mac.perm_addr, ETH_ALEN);

 return E1000_SUCCESS;
}
