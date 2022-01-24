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
typedef  int u32 ;
struct bnxt_fw_health {int* fw_reset_seq_regs; int* fw_reset_seq_vals; int* fw_reset_seq_delay_msec; } ;
struct bnxt {int bar0; int bar1; int /*<<< orphan*/  pdev; struct bnxt_fw_health* fw_health; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  BNXT_FW_HEALTH_REG_TYPE_BAR0 131 
#define  BNXT_FW_HEALTH_REG_TYPE_BAR1 130 
#define  BNXT_FW_HEALTH_REG_TYPE_CFG 129 
#define  BNXT_FW_HEALTH_REG_TYPE_GRC 128 
 int BNXT_GRCPF_REG_WINDOW_BASE_OUT ; 
 int BNXT_GRC_BASE_MASK ; 
 int BNXT_GRC_OFFSET_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct bnxt *bp, int reg_idx)
{
	struct bnxt_fw_health *fw_health = bp->fw_health;
	u32 reg = fw_health->fw_reset_seq_regs[reg_idx];
	u32 val = fw_health->fw_reset_seq_vals[reg_idx];
	u32 reg_type, reg_off, delay_msecs;

	delay_msecs = fw_health->fw_reset_seq_delay_msec[reg_idx];
	reg_type = FUNC1(reg);
	reg_off = FUNC0(reg);
	switch (reg_type) {
	case BNXT_FW_HEALTH_REG_TYPE_CFG:
		FUNC4(bp->pdev, reg_off, val);
		break;
	case BNXT_FW_HEALTH_REG_TYPE_GRC:
		FUNC5(reg_off & BNXT_GRC_BASE_MASK,
		       bp->bar0 + BNXT_GRCPF_REG_WINDOW_BASE_OUT + 4);
		reg_off = (reg_off & BNXT_GRC_OFFSET_MASK) + 0x2000;
		/* fall through */
	case BNXT_FW_HEALTH_REG_TYPE_BAR0:
		FUNC5(val, bp->bar0 + reg_off);
		break;
	case BNXT_FW_HEALTH_REG_TYPE_BAR1:
		FUNC5(val, bp->bar1 + reg_off);
		break;
	}
	if (delay_msecs) {
		FUNC3(bp->pdev, 0, &val);
		FUNC2(delay_msecs);
	}
}