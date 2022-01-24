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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct ice_lldp_org_tlv {int /*<<< orphan*/  typelen; } ;
struct ice_dcbx_cfg {int dummy; } ;

/* Variables and functions */
 int ICE_LLDPDU_SIZE ; 
 int ICE_LLDP_TLV_LEN_M ; 
 int ICE_LLDP_TLV_LEN_S ; 
 int ICE_TLV_ID_END_OF_LLDPPDU ; 
 int ICE_TLV_ID_START ; 
 int /*<<< orphan*/  FUNC0 (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(u8 *lldpmib, u16 *miblen, struct ice_dcbx_cfg *dcbcfg)
{
	u16 len, offset = 0, tlvid = ICE_TLV_ID_START;
	struct ice_lldp_org_tlv *tlv;
	u16 typelen;

	tlv = (struct ice_lldp_org_tlv *)lldpmib;
	while (1) {
		FUNC0(tlv, dcbcfg, tlvid++);
		typelen = FUNC1(tlv->typelen);
		len = (typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S;
		if (len)
			offset += len + 2;
		/* END TLV or beyond LLDPDU size */
		if (tlvid >= ICE_TLV_ID_END_OF_LLDPPDU ||
		    offset > ICE_LLDPDU_SIZE)
			break;
		/* Move to next TLV */
		if (len)
			tlv = (struct ice_lldp_org_tlv *)
				((char *)tlv + sizeof(tlv->typelen) + len);
	}
	*miblen = offset;
}