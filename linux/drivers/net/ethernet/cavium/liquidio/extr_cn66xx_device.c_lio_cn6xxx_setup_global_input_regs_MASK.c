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
struct octeon_device {int pcie_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN6XXX_INPUT_CTL_MASK ; 
 int /*<<< orphan*/  CN6XXX_SLI_IN_PCIE_PORT ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_INPUT_CONTROL ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_INSTR_RD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct octeon_device *oct)
{
	/* Select Round-Robin Arb, ES, RO, NS for Input Queues */
	FUNC0(oct, CN6XXX_SLI_PKT_INPUT_CONTROL,
			 CN6XXX_INPUT_CTL_MASK);

	/* Instruction Read Size - Max 4 instructions per PCIE Read */
	FUNC1(oct, CN6XXX_SLI_PKT_INSTR_RD_SIZE,
			   0xFFFFFFFFFFFFFFFFULL);

	/* Select PCIE Port for all Input rings. */
	FUNC1(oct, CN6XXX_SLI_IN_PCIE_PORT,
			   (oct->pcie_port * 0x5555555555555555ULL));
}