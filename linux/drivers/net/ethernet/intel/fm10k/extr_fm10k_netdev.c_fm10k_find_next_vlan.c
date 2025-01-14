
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ default_vid; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {int active_vlans; struct fm10k_hw hw; } ;


 scalar_t__ VLAN_N_VID ;
 scalar_t__ find_next_bit (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static u16 fm10k_find_next_vlan(struct fm10k_intfc *interface, u16 vid)
{
 struct fm10k_hw *hw = &interface->hw;
 u16 default_vid = hw->mac.default_vid;
 u16 vid_limit = vid < default_vid ? default_vid : VLAN_N_VID;

 vid = find_next_bit(interface->active_vlans, vid_limit, ++vid);

 return vid;
}
