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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {int channel; struct dmae_cmd* p_dmae_cmd; } ;
struct qed_hwfn {TYPE_1__ dmae_info; } ;
struct dmae_cmd {int /*<<< orphan*/  dst_addr_lo; int /*<<< orphan*/  dst_addr_hi; int /*<<< orphan*/  src_addr_lo; int /*<<< orphan*/  src_addr_hi; int /*<<< orphan*/  length_dw; int /*<<< orphan*/  opcode_b; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int DMAE_CMD_SIZE ; 
 int DMAE_CMD_SIZE_TO_FILL ; 
 int /*<<< orphan*/  DMAE_GO_VALUE ; 
 scalar_t__ DMAE_REG_CMD_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_ptt*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct qed_hwfn *p_hwfn,
				 struct qed_ptt *p_ptt)
{
	struct dmae_cmd *p_command = p_hwfn->dmae_info.p_dmae_cmd;
	u8 idx_cmd = p_hwfn->dmae_info.channel, i;
	int qed_status = 0;

	/* verify address is not NULL */
	if ((((!p_command->dst_addr_lo) && (!p_command->dst_addr_hi)) ||
	     ((!p_command->src_addr_lo) && (!p_command->src_addr_hi)))) {
		FUNC0(p_hwfn,
			  "source or destination address 0 idx_cmd=%d\n"
			  "opcode = [0x%08x,0x%04x] len=0x%x src=0x%x:%x dst=0x%x:%x\n",
			  idx_cmd,
			  FUNC3(p_command->opcode),
			  FUNC2(p_command->opcode_b),
			  FUNC2(p_command->length_dw),
			  FUNC3(p_command->src_addr_hi),
			  FUNC3(p_command->src_addr_lo),
			  FUNC3(p_command->dst_addr_hi),
			  FUNC3(p_command->dst_addr_lo));

		return -EINVAL;
	}

	FUNC1(p_hwfn,
		   NETIF_MSG_HW,
		   "Posting DMAE command [idx %d]: opcode = [0x%08x,0x%04x] len=0x%x src=0x%x:%x dst=0x%x:%x\n",
		   idx_cmd,
		   FUNC3(p_command->opcode),
		   FUNC2(p_command->opcode_b),
		   FUNC2(p_command->length_dw),
		   FUNC3(p_command->src_addr_hi),
		   FUNC3(p_command->src_addr_lo),
		   FUNC3(p_command->dst_addr_hi),
		   FUNC3(p_command->dst_addr_lo));

	/* Copy the command to DMAE - need to do it before every call
	 * for source/dest address no reset.
	 * The first 9 DWs are the command registers, the 10 DW is the
	 * GO register, and the rest are result registers
	 * (which are read only by the client).
	 */
	for (i = 0; i < DMAE_CMD_SIZE; i++) {
		u32 data = (i < DMAE_CMD_SIZE_TO_FILL) ?
			   *(((u32 *)p_command) + i) : 0;

		FUNC5(p_hwfn, p_ptt,
		       DMAE_REG_CMD_MEM +
		       (idx_cmd * DMAE_CMD_SIZE * sizeof(u32)) +
		       (i * sizeof(u32)), data);
	}

	FUNC5(p_hwfn, p_ptt, FUNC4(idx_cmd), DMAE_GO_VALUE);

	return qed_status;
}