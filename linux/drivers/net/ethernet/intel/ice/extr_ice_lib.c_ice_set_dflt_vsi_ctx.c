
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vlan_flags; void* outer_up_table; void* egress_table; void* ingress_table; int sw_flags2; int sw_flags; } ;
struct ice_vsi_ctx {int alloc_from_pool; TYPE_1__ info; } ;


 int ICE_AQ_VSI_SW_FLAG_LAN_ENA ;
 int ICE_AQ_VSI_SW_FLAG_SRC_PRUNE ;
 int ICE_AQ_VSI_VLAN_MODE_ALL ;
 int ICE_AQ_VSI_VLAN_MODE_M ;
 int ICE_AQ_VSI_VLAN_MODE_S ;
 int ICE_UP_TABLE_TRANSLATE (int,int) ;
 void* cpu_to_le32 (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void ice_set_dflt_vsi_ctx(struct ice_vsi_ctx *ctxt)
{
 u32 table = 0;

 memset(&ctxt->info, 0, sizeof(ctxt->info));

 ctxt->alloc_from_pool = 1;

 ctxt->info.sw_flags = ICE_AQ_VSI_SW_FLAG_SRC_PRUNE;

 ctxt->info.sw_flags2 = ICE_AQ_VSI_SW_FLAG_LAN_ENA;




 ctxt->info.vlan_flags = ((ICE_AQ_VSI_VLAN_MODE_ALL &
      ICE_AQ_VSI_VLAN_MODE_M) >>
     ICE_AQ_VSI_VLAN_MODE_S);

 table |= ICE_UP_TABLE_TRANSLATE(0, 0);
 table |= ICE_UP_TABLE_TRANSLATE(1, 1);
 table |= ICE_UP_TABLE_TRANSLATE(2, 2);
 table |= ICE_UP_TABLE_TRANSLATE(3, 3);
 table |= ICE_UP_TABLE_TRANSLATE(4, 4);
 table |= ICE_UP_TABLE_TRANSLATE(5, 5);
 table |= ICE_UP_TABLE_TRANSLATE(6, 6);
 table |= ICE_UP_TABLE_TRANSLATE(7, 7);
 ctxt->info.ingress_table = cpu_to_le32(table);
 ctxt->info.egress_table = cpu_to_le32(table);

 ctxt->info.outer_up_table = cpu_to_le32(table);

}
