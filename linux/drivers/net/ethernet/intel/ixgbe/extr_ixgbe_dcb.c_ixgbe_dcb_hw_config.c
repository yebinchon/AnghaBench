
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_dcb_config {int dummy; } ;
typedef int s32 ;


 int DCB_TX_CONFIG ;
 int MAX_TRAFFIC_CLASS ;
 int ixgbe_dcb_hw_config_82598 (struct ixgbe_hw*,int ,int *,int *,int *,int *) ;
 int ixgbe_dcb_hw_config_82599 (struct ixgbe_hw*,int ,int *,int *,int *,int *,int *) ;
 int ixgbe_dcb_unpack_bwgid (struct ixgbe_dcb_config*,int ,int *) ;
 int ixgbe_dcb_unpack_map (struct ixgbe_dcb_config*,int ,int *) ;
 int ixgbe_dcb_unpack_max (struct ixgbe_dcb_config*,int *) ;
 int ixgbe_dcb_unpack_pfc (struct ixgbe_dcb_config*,int *) ;
 int ixgbe_dcb_unpack_prio (struct ixgbe_dcb_config*,int ,int *) ;
 int ixgbe_dcb_unpack_refill (struct ixgbe_dcb_config*,int ,int *) ;







s32 ixgbe_dcb_hw_config(struct ixgbe_hw *hw,
   struct ixgbe_dcb_config *dcb_config)
{
 u8 pfc_en;
 u8 ptype[MAX_TRAFFIC_CLASS];
 u8 bwgid[MAX_TRAFFIC_CLASS];
 u8 prio_tc[MAX_TRAFFIC_CLASS];
 u16 refill[MAX_TRAFFIC_CLASS];
 u16 max[MAX_TRAFFIC_CLASS];


 ixgbe_dcb_unpack_pfc(dcb_config, &pfc_en);
 ixgbe_dcb_unpack_refill(dcb_config, DCB_TX_CONFIG, refill);
 ixgbe_dcb_unpack_max(dcb_config, max);
 ixgbe_dcb_unpack_bwgid(dcb_config, DCB_TX_CONFIG, bwgid);
 ixgbe_dcb_unpack_prio(dcb_config, DCB_TX_CONFIG, ptype);
 ixgbe_dcb_unpack_map(dcb_config, DCB_TX_CONFIG, prio_tc);

 switch (hw->mac.type) {
 case 133:
  return ixgbe_dcb_hw_config_82598(hw, pfc_en, refill, max,
       bwgid, ptype);
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return ixgbe_dcb_hw_config_82599(hw, pfc_en, refill, max,
       bwgid, ptype, prio_tc);
 default:
  break;
 }
 return 0;
}
