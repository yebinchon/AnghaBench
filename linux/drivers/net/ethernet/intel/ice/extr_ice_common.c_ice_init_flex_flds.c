
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int dummy; } ;
typedef enum ice_rxdid { ____Placeholder_ice_rxdid } ice_rxdid ;
typedef enum ice_flex_rx_mdid { ____Placeholder_ice_flex_rx_mdid } ice_flex_rx_mdid ;


 int ICE_DBG_INIT ;
 int ICE_PROG_FLEX_ENTRY (struct ice_hw*,int,int,int) ;


 int ICE_RX_MDID_FLOW_ID_HIGH ;
 int ICE_RX_MDID_FLOW_ID_LOWER ;
 int ICE_RX_MDID_HASH_HIGH ;
 int ICE_RX_MDID_HASH_LOW ;
 int ICE_RX_MDID_SRC_VSI ;
 int ice_debug (struct ice_hw*,int ,char*,int) ;
 int ice_init_flex_flags (struct ice_hw*,int) ;

__attribute__((used)) static void ice_init_flex_flds(struct ice_hw *hw, enum ice_rxdid prof_id)
{
 enum ice_flex_rx_mdid mdid;

 switch (prof_id) {
 case 129:
 case 128:
  ICE_PROG_FLEX_ENTRY(hw, prof_id, ICE_RX_MDID_HASH_LOW, 0);
  ICE_PROG_FLEX_ENTRY(hw, prof_id, ICE_RX_MDID_HASH_HIGH, 1);
  ICE_PROG_FLEX_ENTRY(hw, prof_id, ICE_RX_MDID_FLOW_ID_LOWER, 2);

  mdid = (prof_id == 128) ?
   ICE_RX_MDID_SRC_VSI : ICE_RX_MDID_FLOW_ID_HIGH;

  ICE_PROG_FLEX_ENTRY(hw, prof_id, mdid, 3);

  ice_init_flex_flags(hw, prof_id);
  break;

 default:
  ice_debug(hw, ICE_DBG_INIT,
     "Field init for profile ID %d not supported\n",
     prof_id);
 }
}
