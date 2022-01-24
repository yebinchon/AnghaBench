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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct fw_vi_mac_vni {int /*<<< orphan*/  valid_to_idx; void* vni_mask_pkd; void* lookup_type_to_vni; int /*<<< orphan*/  macaddr_mask; int /*<<< orphan*/  macaddr; } ;
struct TYPE_2__ {struct fw_vi_mac_vni* exact_vni; } ;
struct fw_vi_mac_cmd {void* freemacs_to_len16; void* op_to_viid; TYPE_1__ u; } ;
struct adapter {int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int /*<<< orphan*/  FW_VI_MAC_ADD_MAC ; 
 int /*<<< orphan*/  FW_VI_MAC_CMD ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FW_VI_MAC_CMD_VALID_F ; 
 int FUNC7 (unsigned int) ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FW_VI_MAC_TYPE_EXACTMAC_VNI ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 void* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct fw_vi_mac_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct adapter*,int /*<<< orphan*/ ,struct fw_vi_mac_cmd*,int,struct fw_vi_mac_cmd*,int) ; 

int FUNC16(struct adapter *adap, unsigned int viid,
			    const u8 *addr, const u8 *mask, unsigned int vni,
			    unsigned int vni_mask, u8 dip_hit, u8 lookup_type,
			    bool sleep_ok)
{
	struct fw_vi_mac_cmd c;
	struct fw_vi_mac_vni *p = c.u.exact_vni;
	int ret = 0;
	u32 val;

	FUNC14(&c, 0, sizeof(c));
	c.op_to_viid = FUNC12(FUNC1(FW_VI_MAC_CMD) |
				   FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
				   FUNC7(viid));
	val = FUNC0(1) |
	      FUNC3(FW_VI_MAC_TYPE_EXACTMAC_VNI);
	c.freemacs_to_len16 = FUNC12(val);
	p->valid_to_idx = FUNC11(FW_VI_MAC_CMD_VALID_F |
				      FUNC5(FW_VI_MAC_ADD_MAC));
	FUNC13(p->macaddr, addr, sizeof(p->macaddr));
	FUNC13(p->macaddr_mask, mask, sizeof(p->macaddr_mask));

	p->lookup_type_to_vni =
		FUNC12(FUNC9(vni) |
			    FUNC2(dip_hit) |
			    FUNC6(lookup_type));
	p->vni_mask_pkd = FUNC12(FUNC8(vni_mask));
	ret = FUNC15(adap, adap->mbox, &c, sizeof(c), &c, sleep_ok);
	if (ret == 0)
		ret = FUNC4(FUNC10(p->valid_to_idx));
	return ret;
}