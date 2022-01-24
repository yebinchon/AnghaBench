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
struct mei_txe_hw {scalar_t__ aliveness; } ;
struct mei_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SEC_IPC_INPUT_DOORBELL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct mei_device*) ; 
 scalar_t__ FUNC2 (struct mei_device*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_txe_hw*,int /*<<< orphan*/ ) ; 
 struct mei_txe_hw* FUNC8 (struct mei_device*) ; 

__attribute__((used)) static int FUNC9(struct mei_device *dev, bool intr_enable)
{
	struct mei_txe_hw *hw = FUNC8(dev);

	u32 aliveness_req;
	/*
	 * read input doorbell to ensure consistency between  Bridge and SeC
	 * return value might be garbage return
	 */
	(void)FUNC7(hw, SEC_IPC_INPUT_DOORBELL_REG);

	aliveness_req = FUNC3(dev);
	hw->aliveness = FUNC1(dev);

	/* Disable interrupts in this stage we will poll */
	FUNC5(dev);

	/*
	 * If Aliveness Request and Aliveness Response are not equal then
	 * wait for them to be equal
	 * Since we might have interrupts disabled - poll for it
	 */
	if (aliveness_req != hw->aliveness)
		if (FUNC2(dev, aliveness_req) < 0) {
			FUNC0(dev->dev, "wait for aliveness settle failed ... bailing out\n");
			return -EIO;
		}

	/*
	 * If Aliveness Request and Aliveness Response are set then clear them
	 */
	if (aliveness_req) {
		FUNC4(dev, 0);
		if (FUNC2(dev, 0) < 0) {
			FUNC0(dev->dev, "wait for aliveness failed ... bailing out\n");
			return -EIO;
		}
	}

	/*
	 * Set readiness RDY_CLR bit
	 */
	FUNC6(dev);

	return 0;
}