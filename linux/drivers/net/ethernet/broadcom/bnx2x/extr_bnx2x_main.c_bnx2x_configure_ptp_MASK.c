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
typedef  scalar_t__ u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct bnx2x*) ; 
 int EFAULT ; 
 int /*<<< orphan*/  NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID ; 
 int /*<<< orphan*/  NIG_REG_P0_LLH_PTP_PARAM_MASK ; 
 int /*<<< orphan*/  NIG_REG_P0_LLH_PTP_RULE_MASK ; 
 int /*<<< orphan*/  NIG_REG_P0_LLH_PTP_TO_HOST ; 
 int /*<<< orphan*/  NIG_REG_P0_PTP_EN ; 
 int /*<<< orphan*/  NIG_REG_P0_TLLH_PTP_BUF_SEQID ; 
 int /*<<< orphan*/  NIG_REG_P0_TLLH_PTP_PARAM_MASK ; 
 int /*<<< orphan*/  NIG_REG_P0_TLLH_PTP_RULE_MASK ; 
 int /*<<< orphan*/  NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID ; 
 int /*<<< orphan*/  NIG_REG_P1_LLH_PTP_PARAM_MASK ; 
 int /*<<< orphan*/  NIG_REG_P1_LLH_PTP_RULE_MASK ; 
 int /*<<< orphan*/  NIG_REG_P1_LLH_PTP_TO_HOST ; 
 int /*<<< orphan*/  NIG_REG_P1_PTP_EN ; 
 int /*<<< orphan*/  NIG_REG_P1_TLLH_PTP_BUF_SEQID ; 
 int /*<<< orphan*/  NIG_REG_P1_TLLH_PTP_PARAM_MASK ; 
 int /*<<< orphan*/  NIG_REG_P1_TLLH_PTP_RULE_MASK ; 
 scalar_t__ NIG_REG_TIMESYNC_GEN_REG ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,scalar_t__,scalar_t__*,int) ; 
 int FUNC4 (struct bnx2x*) ; 
 scalar_t__ tsgen_ctrl ; 

__attribute__((used)) static int FUNC5(struct bnx2x *bp)
{
	int rc, port = FUNC1(bp);
	u32 wb_data[2];

	/* Reset PTP event detection rules - will be configured in the IOCTL */
	FUNC2(bp, port ? NIG_REG_P1_LLH_PTP_PARAM_MASK :
	       NIG_REG_P0_LLH_PTP_PARAM_MASK, 0x7FF);
	FUNC2(bp, port ? NIG_REG_P1_LLH_PTP_RULE_MASK :
	       NIG_REG_P0_LLH_PTP_RULE_MASK, 0x3FFF);
	FUNC2(bp, port ? NIG_REG_P1_TLLH_PTP_PARAM_MASK :
	       NIG_REG_P0_TLLH_PTP_PARAM_MASK, 0x7FF);
	FUNC2(bp, port ? NIG_REG_P1_TLLH_PTP_RULE_MASK :
	       NIG_REG_P0_TLLH_PTP_RULE_MASK, 0x3FFF);

	/* Disable PTP packets to host - will be configured in the IOCTL*/
	FUNC2(bp, port ? NIG_REG_P1_LLH_PTP_TO_HOST :
	       NIG_REG_P0_LLH_PTP_TO_HOST, 0x0);

	/* Enable the PTP feature */
	FUNC2(bp, port ? NIG_REG_P1_PTP_EN :
	       NIG_REG_P0_PTP_EN, 0x3F);

	/* Enable the free-running counter */
	wb_data[0] = 0;
	wb_data[1] = 0;
	FUNC3(bp, NIG_REG_TIMESYNC_GEN_REG + tsgen_ctrl, wb_data, 2);

	/* Reset drift register (offset register is not reset) */
	rc = FUNC4(bp);
	if (rc) {
		FUNC0("Failed to reset PHC drift register\n");
		return -EFAULT;
	}

	/* Reset possibly old timestamps */
	FUNC2(bp, port ? NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID :
	       NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID, 0x10000);
	FUNC2(bp, port ? NIG_REG_P1_TLLH_PTP_BUF_SEQID :
	       NIG_REG_P0_TLLH_PTP_BUF_SEQID, 0x10000);

	return 0;
}