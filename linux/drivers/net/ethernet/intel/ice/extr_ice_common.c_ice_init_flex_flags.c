
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ice_hw {int dummy; } ;
typedef enum ice_rxdid { ____Placeholder_ice_rxdid } ice_rxdid ;


 int ICE_DBG_INIT ;
 int ICE_FLG_EVLAN_x8100 ;
 int ICE_FLG_EVLAN_x9100 ;
 int ICE_FLG_FIN ;
 int ICE_FLG_PKT_DSI ;
 int ICE_FLG_PKT_FRG ;
 int ICE_FLG_RST ;
 int ICE_FLG_SYN ;
 int ICE_FLG_TNL0 ;
 int ICE_FLG_TNL1 ;
 int ICE_FLG_TNL2 ;
 int ICE_FLG_TNL_MAC ;
 int ICE_FLG_TNL_VLAN ;
 int ICE_FLG_UDP_GRE ;
 int ICE_FLG_VLAN_x8100 ;
 int ICE_PROG_FLG_ENTRY (struct ice_hw*,int,int ,int ,int ,int ,int ) ;


 int ice_debug (struct ice_hw*,int ,char*,int) ;

__attribute__((used)) static void ice_init_flex_flags(struct ice_hw *hw, enum ice_rxdid prof_id)
{
 u8 idx = 0;







 switch (prof_id) {




 case 129:
 case 128:
  ICE_PROG_FLG_ENTRY(hw, prof_id, ICE_FLG_PKT_FRG,
       ICE_FLG_UDP_GRE, ICE_FLG_PKT_DSI,
       ICE_FLG_FIN, idx++);



  ICE_PROG_FLG_ENTRY(hw, prof_id, ICE_FLG_SYN, ICE_FLG_RST,
       ICE_FLG_PKT_DSI, ICE_FLG_PKT_DSI, idx++);
  ICE_PROG_FLG_ENTRY(hw, prof_id, ICE_FLG_PKT_DSI,
       ICE_FLG_PKT_DSI, ICE_FLG_EVLAN_x8100,
       ICE_FLG_EVLAN_x9100, idx++);
  ICE_PROG_FLG_ENTRY(hw, prof_id, ICE_FLG_VLAN_x8100,
       ICE_FLG_TNL_VLAN, ICE_FLG_TNL_MAC,
       ICE_FLG_TNL0, idx++);
  ICE_PROG_FLG_ENTRY(hw, prof_id, ICE_FLG_TNL1, ICE_FLG_TNL2,
       ICE_FLG_PKT_DSI, ICE_FLG_PKT_DSI, idx);
  break;

 default:
  ice_debug(hw, ICE_DBG_INIT,
     "Flag programming for profile ID %d not supported\n",
     prof_id);
 }
}
