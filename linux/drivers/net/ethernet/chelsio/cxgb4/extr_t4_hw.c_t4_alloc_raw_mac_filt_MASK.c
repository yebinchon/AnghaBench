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
struct fw_vi_mac_raw {void* raw_idx_pkd; int /*<<< orphan*/ * data1m; int /*<<< orphan*/ * data1; int /*<<< orphan*/  data0m_pkd; void* data0_pkd; } ;
struct TYPE_2__ {struct fw_vi_mac_raw raw; } ;
struct fw_vi_mac_cmd {void* freemacs_to_len16; void* op_to_viid; TYPE_1__ u; } ;
struct adapter {int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  DATALKPTYPE_M ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DATAPORTNUM_M ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int /*<<< orphan*/  FW_VI_MAC_CMD ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FW_VI_MAC_TYPE_RAW ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fw_vi_mac_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct adapter*,int /*<<< orphan*/ ,struct fw_vi_mac_cmd*,int,struct fw_vi_mac_cmd*,int) ; 

int FUNC14(struct adapter *adap, unsigned int viid,
			  const u8 *addr, const u8 *mask, unsigned int idx,
			  u8 lookup_type, u8 port_id, bool sleep_ok)
{
	int ret = 0;
	struct fw_vi_mac_cmd c;
	struct fw_vi_mac_raw *p = &c.u.raw;
	u32 val;

	FUNC12(&c, 0, sizeof(c));
	c.op_to_viid = FUNC9(FUNC3(FW_VI_MAC_CMD) |
				   FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
				   FUNC7(viid));
	val = FUNC2(1) |
	      FUNC4(FW_VI_MAC_TYPE_RAW);
	c.freemacs_to_len16 = FUNC9(val);

	/* Specify that this is an inner mac address */
	p->raw_idx_pkd = FUNC9(FUNC6(idx));

	/* Lookup Type. Outer header: 0, Inner header: 1 */
	p->data0_pkd = FUNC9(FUNC0(lookup_type) |
				   FUNC1(port_id));
	/* Lookup mask and port mask */
	p->data0m_pkd = FUNC10(FUNC0(DATALKPTYPE_M) |
				    FUNC1(DATAPORTNUM_M));

	/* Copy the address and the mask */
	FUNC11((u8 *)&p->data1[0] + 2, addr, ETH_ALEN);
	FUNC11((u8 *)&p->data1m[0] + 2, mask, ETH_ALEN);

	ret = FUNC13(adap, adap->mbox, &c, sizeof(c), &c, sleep_ok);
	if (ret == 0) {
		ret = FUNC5(FUNC8(p->raw_idx_pkd));
		if (ret != idx)
			ret = -ENOMEM;
	}

	return ret;
}