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
struct fintek_dev {int /*<<< orphan*/  logical_dev_cir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_CONTROL ; 
 int /*<<< orphan*/  CIR_CR_BASE_ADDR_HI ; 
 int /*<<< orphan*/  CIR_CR_BASE_ADDR_LO ; 
 int /*<<< orphan*/  CIR_CR_IRQ_SEL ; 
 int /*<<< orphan*/  CIR_RX_DATA ; 
 int /*<<< orphan*/  CIR_STATUS ; 
 int /*<<< orphan*/  CIR_TX_CONTROL ; 
 int /*<<< orphan*/  CIR_TX_DATA ; 
 int FINTEK_DRIVER_NAME ; 
 int FUNC0 (struct fintek_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fintek_dev*) ; 
 int FUNC3 (struct fintek_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fintek_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(struct fintek_dev *fintek)
{
	FUNC2(fintek);
	FUNC4(fintek, fintek->logical_dev_cir);

	FUNC5("%s: Dump CIR logical device registers:\n", FINTEK_DRIVER_NAME);
	FUNC5(" * CR CIR BASE ADDR: 0x%x\n",
		(FUNC3(fintek, CIR_CR_BASE_ADDR_HI) << 8) |
		FUNC3(fintek, CIR_CR_BASE_ADDR_LO));
	FUNC5(" * CR CIR IRQ NUM:   0x%x\n",
		FUNC3(fintek, CIR_CR_IRQ_SEL));

	FUNC1(fintek);

	FUNC5("%s: Dump CIR registers:\n", FINTEK_DRIVER_NAME);
	FUNC5(" * STATUS:     0x%x\n",
		FUNC0(fintek, CIR_STATUS));
	FUNC5(" * CONTROL:    0x%x\n",
		FUNC0(fintek, CIR_CONTROL));
	FUNC5(" * RX_DATA:    0x%x\n",
		FUNC0(fintek, CIR_RX_DATA));
	FUNC5(" * TX_CONTROL: 0x%x\n",
		FUNC0(fintek, CIR_TX_CONTROL));
	FUNC5(" * TX_DATA:    0x%x\n",
		FUNC0(fintek, CIR_TX_DATA));
}