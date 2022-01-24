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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int IGU_CMD_E2_PROD_UPD_BASE ; 
 int IGU_CTRL_CMD_TYPE_WR ; 
 int IGU_CTRL_REG_ADDRESS_SHIFT ; 
 int IGU_CTRL_REG_FID_SHIFT ; 
 int IGU_CTRL_REG_TYPE_SHIFT ; 
 int IGU_FID_ENCODE_IS_PF_SHIFT ; 
 int IGU_REGULAR_BCLEANUP ; 
 int IGU_REGULAR_CLEANUP_SET ; 
 int IGU_REGULAR_CLEANUP_TYPE_SHIFT ; 
 int IGU_REG_COMMAND_REG_32LSB_DATA ; 
 int IGU_REG_COMMAND_REG_CTRL ; 
 int IGU_REG_CSTORM_TYPE_0_SB_CLEANUP ; 
 int IGU_USE_REGISTER_cstorm_type_0_sb_cleanup ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int FUNC2 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct bnx2x *bp, u8 func, u8 idu_sb_id, bool is_pf)
{
	u32 data, ctl, cnt = 100;
	u32 igu_addr_data = IGU_REG_COMMAND_REG_32LSB_DATA;
	u32 igu_addr_ctl = IGU_REG_COMMAND_REG_CTRL;
	u32 igu_addr_ack = IGU_REG_CSTORM_TYPE_0_SB_CLEANUP + (idu_sb_id/32)*4;
	u32 sb_bit =  1 << (idu_sb_id%32);
	u32 func_encode = func | (is_pf ? 1 : 0) << IGU_FID_ENCODE_IS_PF_SHIFT;
	u32 addr_encode = IGU_CMD_E2_PROD_UPD_BASE + idu_sb_id;

	/* Not supported in BC mode */
	if (FUNC0(bp))
		return;

	data = (IGU_USE_REGISTER_cstorm_type_0_sb_cleanup
			<< IGU_REGULAR_CLEANUP_TYPE_SHIFT)	|
		IGU_REGULAR_CLEANUP_SET				|
		IGU_REGULAR_BCLEANUP;

	ctl = addr_encode << IGU_CTRL_REG_ADDRESS_SHIFT		|
	      func_encode << IGU_CTRL_REG_FID_SHIFT		|
	      IGU_CTRL_CMD_TYPE_WR << IGU_CTRL_REG_TYPE_SHIFT;

	FUNC1(NETIF_MSG_HW, "write 0x%08x to IGU(via GRC) addr 0x%x\n",
			 data, igu_addr_data);
	FUNC3(bp, igu_addr_data, data);
	FUNC4();
	FUNC1(NETIF_MSG_HW, "write 0x%08x to IGU(via GRC) addr 0x%x\n",
			  ctl, igu_addr_ctl);
	FUNC3(bp, igu_addr_ctl, ctl);
	FUNC4();

	/* wait for clean up to finish */
	while (!(FUNC2(bp, igu_addr_ack) & sb_bit) && --cnt)
		FUNC5(20);

	if (!(FUNC2(bp, igu_addr_ack) & sb_bit)) {
		FUNC1(NETIF_MSG_HW,
		   "Unable to finish IGU cleanup: idu_sb_id %d offset %d bit %d (cnt %d)\n",
			  idu_sb_id, idu_sb_id/32, idu_sb_id%32, cnt);
	}
}