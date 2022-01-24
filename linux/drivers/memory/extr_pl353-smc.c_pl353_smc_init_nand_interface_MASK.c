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
struct device_node {int dummy; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 unsigned long PL353_NAND_ECC_BUSY_TIMEOUT ; 
 int /*<<< orphan*/  PL353_NAND_ECC_CMD1 ; 
 int /*<<< orphan*/  PL353_NAND_ECC_CMD2 ; 
 int /*<<< orphan*/  PL353_SMC_CFG_CLR_INT_CLR_1 ; 
 scalar_t__ PL353_SMC_CFG_CLR_OFFS ; 
 int /*<<< orphan*/  PL353_SMC_DC_UPT_NAND_REGS ; 
 scalar_t__ PL353_SMC_DIRECT_CMD_OFFS ; 
 scalar_t__ PL353_SMC_ECC_MEMCMD1_OFFS ; 
 scalar_t__ PL353_SMC_ECC_MEMCMD2_OFFS ; 
 int /*<<< orphan*/  PL353_SMC_MEM_WIDTH_8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 scalar_t__ pl353_smc_base ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct amba_device *adev,
					  struct device_node *nand_node)
{
	unsigned long timeout;

	FUNC2(PL353_SMC_MEM_WIDTH_8);
	FUNC4(PL353_SMC_CFG_CLR_INT_CLR_1,
	       pl353_smc_base + PL353_SMC_CFG_CLR_OFFS);
	FUNC4(PL353_SMC_DC_UPT_NAND_REGS, pl353_smc_base +
	       PL353_SMC_DIRECT_CMD_OFFS);

	timeout = jiffies + PL353_NAND_ECC_BUSY_TIMEOUT;
	/* Wait till the ECC operation is complete */
	do {
		if (FUNC1())
			FUNC0();
		else
			break;
	} while (!FUNC3(jiffies, timeout));

	if (FUNC3(jiffies, timeout))
		return;

	FUNC4(PL353_NAND_ECC_CMD1,
	       pl353_smc_base + PL353_SMC_ECC_MEMCMD1_OFFS);
	FUNC4(PL353_NAND_ECC_CMD2,
	       pl353_smc_base + PL353_SMC_ECC_MEMCMD2_OFFS);
}