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
typedef  int /*<<< orphan*/  u32 ;
struct hw_atl_utils_fw_rpc {int dummy; } ;
struct aq_hw_s {scalar_t__ rpc_tid; struct hw_atl_utils_fw_rpc rpc; int /*<<< orphan*/  rpc_addr; } ;
struct aq_hw_atl_utils_fw_rpc_tid_s {scalar_t__ tid; int len; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_ATL_RPC_CONTROL_ADR ; 
 int /*<<< orphan*/  FUNC0 (struct aq_hw_s*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  hw_atl_utils_rpc_state_get ; 
 int FUNC3 (int /*<<< orphan*/ ,struct aq_hw_s*,int /*<<< orphan*/ ,int,unsigned int,unsigned int) ; 

int FUNC4(struct aq_hw_s *self,
			     struct hw_atl_utils_fw_rpc **rpc)
{
	int err = 0;
	struct aq_hw_atl_utils_fw_rpc_tid_s sw;
	struct aq_hw_atl_utils_fw_rpc_tid_s fw;

	do {
		sw.val = FUNC0(self, HW_ATL_RPC_CONTROL_ADR);

		self->rpc_tid = sw.tid;

		err = FUNC3(hw_atl_utils_rpc_state_get,
						self, fw.val,
						sw.tid == fw.tid,
						1000U, 100000U);

		if (fw.len == 0xFFFFU) {
			err = FUNC2(self, sw.len);
			if (err < 0)
				goto err_exit;
		}
	} while (sw.tid != fw.tid || 0xFFFFU == fw.len);

	if (rpc) {
		if (fw.len) {
			err =
			FUNC1(self,
						      self->rpc_addr,
						      (u32 *)(void *)
						      &self->rpc,
						      (fw.len + sizeof(u32) -
						       sizeof(u8)) /
						      sizeof(u32));
			if (err < 0)
				goto err_exit;
		}

		*rpc = &self->rpc;
	}

err_exit:
	return err;
}