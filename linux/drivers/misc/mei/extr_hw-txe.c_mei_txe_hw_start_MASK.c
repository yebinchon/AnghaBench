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
struct mei_txe_hw {int /*<<< orphan*/  intr_cause; } ;
struct mei_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HISR_INT_2_STS ; 
 int /*<<< orphan*/  HISR_REG ; 
 int /*<<< orphan*/  TXE_INTR_OUT_DB_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct mei_device*,int) ; 
 int FUNC3 (struct mei_txe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_txe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_txe_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct mei_device*) ; 
 int FUNC9 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct mei_txe_hw* FUNC11 (struct mei_device*) ; 

__attribute__((used)) static int FUNC12(struct mei_device *dev)
{
	struct mei_txe_hw *hw = FUNC11(dev);
	int ret;

	u32 hisr;

	/* bring back interrupts */
	FUNC6(dev);

	ret = FUNC9(dev);
	if (ret < 0) {
		FUNC1(dev->dev, "waiting for readiness failed\n");
		return ret;
	}

	/*
	 * If HISR.INT2_STS interrupt status bit is set then clear it.
	 */
	hisr = FUNC3(hw, HISR_REG);
	if (hisr & HISR_INT_2_STS)
		FUNC4(hw, HISR_REG, HISR_INT_2_STS);

	/* Clear the interrupt cause of OutputDoorbell */
	FUNC0(TXE_INTR_OUT_DB_BIT, &hw->intr_cause);

	ret = FUNC2(dev, 1);
	if (ret < 0) {
		FUNC1(dev->dev, "wait for aliveness failed ... bailing out\n");
		return ret;
	}

	FUNC10(dev->dev);

	/* enable input ready interrupts:
	 * SEC_IPC_HOST_INT_MASK.IPC_INPUT_READY_INT_MASK
	 */
	FUNC5(dev);


	/*  Set the SICR_SEC_IPC_OUTPUT_STATUS.IPC_OUTPUT_READY bit */
	FUNC7(hw);

	/* Set bit SICR_HOST_IPC_READINESS.HOST_RDY
	 */
	FUNC8(dev);

	return 0;
}