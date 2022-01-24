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
struct mei_txe_hw {int intr_cause; } ;
struct mei_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HHISR_REG ; 
 int HISR_INT_STS_MSK ; 
 int /*<<< orphan*/  HISR_REG ; 
 int IPC_HHIER_MSK ; 
 int IPC_HHIER_SEC ; 
 int SEC_IPC_HOST_INT_STATUS_IN_RDY ; 
 int SEC_IPC_HOST_INT_STATUS_PENDING ; 
 int /*<<< orphan*/  SEC_IPC_HOST_INT_STATUS_REG ; 
 int TXE_INTR_IN_READY ; 
 int FUNC0 (struct mei_device*) ; 
 int FUNC1 (struct mei_txe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_txe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_device*) ; 
 int FUNC4 (struct mei_txe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_txe_hw*,int /*<<< orphan*/ ,int) ; 
 struct mei_txe_hw* FUNC6 (struct mei_device*) ; 

__attribute__((used)) static bool FUNC7(struct mei_device *dev, bool do_ack)
{
	struct mei_txe_hw *hw = FUNC6(dev);
	u32 hisr;
	u32 hhisr;
	u32 ipc_isr;
	u32 aliveness;
	bool generated;

	/* read interrupt registers */
	hhisr = FUNC1(hw, HHISR_REG);
	generated = (hhisr & IPC_HHIER_MSK);
	if (!generated)
		goto out;

	hisr = FUNC1(hw, HISR_REG);

	aliveness = FUNC0(dev);
	if (hhisr & IPC_HHIER_SEC && aliveness) {
		ipc_isr = FUNC4(hw,
				SEC_IPC_HOST_INT_STATUS_REG);
	} else {
		ipc_isr = 0;
		hhisr &= ~IPC_HHIER_SEC;
	}

	generated = generated ||
		(hisr & HISR_INT_STS_MSK) ||
		(ipc_isr & SEC_IPC_HOST_INT_STATUS_PENDING);

	if (generated && do_ack) {
		/* Save the interrupt causes */
		hw->intr_cause |= hisr & HISR_INT_STS_MSK;
		if (ipc_isr & SEC_IPC_HOST_INT_STATUS_IN_RDY)
			hw->intr_cause |= TXE_INTR_IN_READY;


		FUNC3(dev);
		/* Clear the interrupts in hierarchy:
		 * IPC and Bridge, than the High Level */
		FUNC5(hw,
			SEC_IPC_HOST_INT_STATUS_REG, ipc_isr);
		FUNC2(hw, HISR_REG, hisr);
		FUNC2(hw, HHISR_REG, hhisr);
	}

out:
	return generated;
}