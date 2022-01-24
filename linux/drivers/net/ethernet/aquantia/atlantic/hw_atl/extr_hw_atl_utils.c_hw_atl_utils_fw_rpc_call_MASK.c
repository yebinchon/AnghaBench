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
typedef  scalar_t__ u16 ;
struct aq_hw_s {int rpc_tid; int /*<<< orphan*/  rpc; int /*<<< orphan*/  rpc_addr; } ;
struct aq_hw_atl_utils_fw_rpc_tid_s {int tid; int /*<<< orphan*/  val; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_ATL_RPC_CONTROL_ADR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIPS ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC3(struct aq_hw_s *self, unsigned int rpc_size)
{
	int err = 0;
	struct aq_hw_atl_utils_fw_rpc_tid_s sw;

	if (!FUNC0(MIPS)) {
		err = -1;
		goto err_exit;
	}
	err = FUNC2(self, self->rpc_addr,
					    (u32 *)(void *)&self->rpc,
					    (rpc_size + sizeof(u32) -
					     sizeof(u8)) / sizeof(u32));
	if (err < 0)
		goto err_exit;

	sw.tid = 0xFFFFU & (++self->rpc_tid);
	sw.len = (u16)rpc_size;
	FUNC1(self, HW_ATL_RPC_CONTROL_ADR, sw.val);

err_exit:
	return err;
}