#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_2__ {int vlan_flags; void* valid_sections; int /*<<< orphan*/  sw_flags2; void* pvid; } ;
struct ice_vsi_ctx {TYPE_1__ info; } ;

/* Variables and functions */
 int ICE_AQ_VSI_PROP_SW_VALID ; 
 int ICE_AQ_VSI_PROP_VLAN_VALID ; 
 int ICE_AQ_VSI_PVLAN_INSERT_PVID ; 
 int /*<<< orphan*/  ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA ; 
 int ICE_AQ_VSI_VLAN_EMOD_STR ; 
 int ICE_AQ_VSI_VLAN_MODE_UNTAGGED ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct ice_vsi_ctx *ctxt, u16 vid)
{
	ctxt->info.vlan_flags = (ICE_AQ_VSI_VLAN_MODE_UNTAGGED |
				 ICE_AQ_VSI_PVLAN_INSERT_PVID |
				 ICE_AQ_VSI_VLAN_EMOD_STR);
	ctxt->info.pvid = FUNC0(vid);
	ctxt->info.sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
	ctxt->info.valid_sections = FUNC0(ICE_AQ_VSI_PROP_VLAN_VALID |
						ICE_AQ_VSI_PROP_SW_VALID);
}