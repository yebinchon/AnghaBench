
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_hw {scalar_t__ evb_veb; } ;
struct TYPE_3__ {int mac_addr; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ice_fltr_info {int lb_en; int lan_en; int flag; scalar_t__ fltr_act; scalar_t__ lkup_type; TYPE_2__ l_data; } ;


 int ICE_FLTR_TX ;
 scalar_t__ ICE_FWD_TO_Q ;
 scalar_t__ ICE_FWD_TO_QGRP ;
 scalar_t__ ICE_FWD_TO_VSI ;
 scalar_t__ ICE_FWD_TO_VSI_LIST ;
 scalar_t__ ICE_SW_LKUP_DFLT ;
 scalar_t__ ICE_SW_LKUP_ETHERTYPE ;
 scalar_t__ ICE_SW_LKUP_ETHERTYPE_MAC ;
 scalar_t__ ICE_SW_LKUP_MAC ;
 scalar_t__ ICE_SW_LKUP_MAC_VLAN ;
 scalar_t__ ICE_SW_LKUP_PROMISC ;
 scalar_t__ ICE_SW_LKUP_PROMISC_VLAN ;
 scalar_t__ ICE_SW_LKUP_VLAN ;
 int is_unicast_ether_addr (int ) ;

__attribute__((used)) static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
{
 fi->lb_en = 0;
 fi->lan_en = 0;
 if ((fi->flag & ICE_FLTR_TX) &&
     (fi->fltr_act == ICE_FWD_TO_VSI ||
      fi->fltr_act == ICE_FWD_TO_VSI_LIST ||
      fi->fltr_act == ICE_FWD_TO_Q ||
      fi->fltr_act == ICE_FWD_TO_QGRP)) {



  if (fi->lkup_type != ICE_SW_LKUP_VLAN)
   fi->lb_en = 1;
  if (hw->evb_veb) {
   if (fi->lkup_type == ICE_SW_LKUP_ETHERTYPE ||
       fi->lkup_type == ICE_SW_LKUP_PROMISC ||
       fi->lkup_type == ICE_SW_LKUP_ETHERTYPE_MAC ||
       fi->lkup_type == ICE_SW_LKUP_PROMISC_VLAN ||
       fi->lkup_type == ICE_SW_LKUP_DFLT ||
       fi->lkup_type == ICE_SW_LKUP_VLAN ||
       (fi->lkup_type == ICE_SW_LKUP_MAC &&
        !is_unicast_ether_addr(fi->l_data.mac.mac_addr)) ||
       (fi->lkup_type == ICE_SW_LKUP_MAC_VLAN &&
        !is_unicast_ether_addr(fi->l_data.mac.mac_addr)))
    fi->lan_en = 1;
  } else {
   fi->lan_en = 1;
  }
 }
}
