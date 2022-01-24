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
typedef  int u32 ;
struct ice_lldp_org_tlv {int /*<<< orphan*/  ouisubtype; } ;
struct ice_dcbx_cfg {int dummy; } ;

/* Variables and functions */
#define  ICE_CEE_DCBX_OUI 129 
#define  ICE_IEEE_8021QAZ_OUI 128 
 int ICE_LLDP_TLV_OUI_M ; 
 int ICE_LLDP_TLV_OUI_S ; 
 int /*<<< orphan*/  FUNC0 (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
{
	u32 ouisubtype;
	u32 oui;

	ouisubtype = FUNC2(tlv->ouisubtype);
	oui = ((ouisubtype & ICE_LLDP_TLV_OUI_M) >> ICE_LLDP_TLV_OUI_S);
	switch (oui) {
	case ICE_IEEE_8021QAZ_OUI:
		FUNC1(tlv, dcbcfg);
		break;
	case ICE_CEE_DCBX_OUI:
		FUNC0(tlv, dcbcfg);
		break;
	default:
		break;
	}
}