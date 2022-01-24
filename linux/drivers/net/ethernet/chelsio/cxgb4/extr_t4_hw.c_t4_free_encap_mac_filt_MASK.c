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
struct fw_vi_mac_exact {int /*<<< orphan*/  macaddr; int /*<<< orphan*/  valid_to_idx; } ;
struct TYPE_2__ {struct fw_vi_mac_exact* exact; } ;
struct fw_vi_mac_cmd {TYPE_1__ u; void* freemacs_to_len16; void* op_to_viid; } ;
struct adapter {int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int /*<<< orphan*/  FW_VI_MAC_CMD ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FW_VI_MAC_CMD_VALID_F ; 
 int FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FW_VI_MAC_TYPE_EXACTMAC ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct fw_vi_mac_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct adapter*,int /*<<< orphan*/ ,struct fw_vi_mac_cmd*,int,struct fw_vi_mac_cmd*,int) ; 

int FUNC12(struct adapter *adap, unsigned int viid,
			   int idx, bool sleep_ok)
{
	struct fw_vi_mac_exact *p;
	u8 addr[] = {0, 0, 0, 0, 0, 0};
	struct fw_vi_mac_cmd c;
	int ret = 0;
	u32 exact;

	FUNC10(&c, 0, sizeof(c));
	c.op_to_viid = FUNC8(FUNC2(FW_VI_MAC_CMD) |
				   FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
				   FUNC0(0) |
				   FUNC6(viid));
	exact = FUNC3(FW_VI_MAC_TYPE_EXACTMAC);
	c.freemacs_to_len16 = FUNC8(FUNC4(0) |
					  exact |
					  FUNC1(1));
	p = c.u.exact;
	p->valid_to_idx = FUNC7(FW_VI_MAC_CMD_VALID_F |
				      FUNC5(idx));
	FUNC9(p->macaddr, addr, sizeof(p->macaddr));
	ret = FUNC11(adap, adap->mbox, &c, sizeof(c), &c, sleep_ok);
	return ret;
}