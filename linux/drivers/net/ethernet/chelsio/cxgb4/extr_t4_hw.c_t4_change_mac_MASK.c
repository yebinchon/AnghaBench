#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct fw_vi_mac_exact {int /*<<< orphan*/  valid_to_idx; int /*<<< orphan*/  macaddr; } ;
struct TYPE_4__ {struct fw_vi_mac_exact* exact; } ;
struct fw_vi_mac_cmd {void* op_to_viid; void* freemacs_to_len16; TYPE_1__ u; } ;
struct TYPE_5__ {unsigned int mps_tcam_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  chip; scalar_t__ viid_smt_extn_support; TYPE_2__ arch; } ;
struct adapter {TYPE_3__ params; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHELSIO_T5 ; 
 int ENOMEM ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 unsigned int FW_VIID_VIN_M ; 
 int FW_VI_MAC_ADD_MAC ; 
 int FW_VI_MAC_ADD_PERSIST_MAC ; 
 int /*<<< orphan*/  FW_VI_MAC_CMD ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int FW_VI_MAC_CMD_VALID_F ; 
 int FUNC7 (unsigned int) ; 
 int FW_VI_MAC_MPS_TCAM_ENTRY ; 
 int FW_VI_MAC_SMT_AND_MPSTCAM ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 void* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int const*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct fw_vi_mac_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct adapter*,unsigned int,struct fw_vi_mac_cmd*,int,struct fw_vi_mac_cmd*) ; 

int FUNC15(struct adapter *adap, unsigned int mbox, unsigned int viid,
		  int idx, const u8 *addr, bool persist, u8 *smt_idx)
{
	int ret, mode;
	struct fw_vi_mac_cmd c;
	struct fw_vi_mac_exact *p = c.u.exact;
	unsigned int max_mac_addr = adap->params.arch.mps_tcam_size;

	if (idx < 0)                             /* new allocation */
		idx = persist ? FW_VI_MAC_ADD_PERSIST_MAC : FW_VI_MAC_ADD_MAC;
	mode = smt_idx ? FW_VI_MAC_SMT_AND_MPSTCAM : FW_VI_MAC_MPS_TCAM_ENTRY;

	FUNC13(&c, 0, sizeof(c));
	c.op_to_viid = FUNC11(FUNC2(FW_VI_MAC_CMD) |
				   FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
				   FUNC7(viid));
	c.freemacs_to_len16 = FUNC11(FUNC1(1));
	p->valid_to_idx = FUNC10(FW_VI_MAC_CMD_VALID_F |
				      FUNC5(mode) |
				      FUNC4(idx));
	FUNC12(p->macaddr, addr, sizeof(p->macaddr));

	ret = FUNC14(adap, mbox, &c, sizeof(c), &c);
	if (ret == 0) {
		ret = FUNC3(FUNC8(p->valid_to_idx));
		if (ret >= max_mac_addr)
			ret = -ENOMEM;
		if (smt_idx) {
			if (adap->params.viid_smt_extn_support) {
				*smt_idx = FUNC6
						    (FUNC9(c.op_to_viid));
			} else {
				/* In T4/T5, SMT contains 256 SMAC entries
				 * organized in 128 rows of 2 entries each.
				 * In T6, SMT contains 256 SMAC entries in
				 * 256 rows.
				 */
				if (FUNC0(adap->params.chip) <=
								     CHELSIO_T5)
					*smt_idx = (viid & FW_VIID_VIN_M) << 1;
				else
					*smt_idx = (viid & FW_VIID_VIN_M);
			}
		}
	}
	return ret;
}