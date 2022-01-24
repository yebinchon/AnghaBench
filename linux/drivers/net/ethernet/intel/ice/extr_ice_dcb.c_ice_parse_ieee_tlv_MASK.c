#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct ice_lldp_org_tlv {int /*<<< orphan*/  ouisubtype; } ;
struct ice_dcbx_cfg {int dummy; } ;

/* Variables and functions */
#define  ICE_IEEE_SUBTYPE_APP_PRI 131 
#define  ICE_IEEE_SUBTYPE_ETS_CFG 130 
#define  ICE_IEEE_SUBTYPE_ETS_REC 129 
#define  ICE_IEEE_SUBTYPE_PFC_CFG 128 
 int ICE_LLDP_TLV_SUBTYPE_M ; 
 int ICE_LLDP_TLV_SUBTYPE_S ; 
 int /*<<< orphan*/  FUNC0 (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
{
	u32 ouisubtype;
	u8 subtype;

	ouisubtype = FUNC4(tlv->ouisubtype);
	subtype = (u8)((ouisubtype & ICE_LLDP_TLV_SUBTYPE_M) >>
		       ICE_LLDP_TLV_SUBTYPE_S);
	switch (subtype) {
	case ICE_IEEE_SUBTYPE_ETS_CFG:
		FUNC1(tlv, dcbcfg);
		break;
	case ICE_IEEE_SUBTYPE_ETS_REC:
		FUNC2(tlv, dcbcfg);
		break;
	case ICE_IEEE_SUBTYPE_PFC_CFG:
		FUNC3(tlv, dcbcfg);
		break;
	case ICE_IEEE_SUBTYPE_APP_PRI:
		FUNC0(tlv, dcbcfg);
		break;
	default:
		break;
	}
}