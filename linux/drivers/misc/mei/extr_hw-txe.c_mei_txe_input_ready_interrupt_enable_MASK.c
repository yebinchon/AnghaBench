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
typedef  int /*<<< orphan*/  u32 ;
struct mei_txe_hw {int dummy; } ;
struct mei_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEC_IPC_HOST_INT_MASK_IN_RDY ; 
 int /*<<< orphan*/  SEC_IPC_HOST_INT_MASK_REG ; 
 int /*<<< orphan*/  FUNC0 (struct mei_txe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_txe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mei_txe_hw* FUNC2 (struct mei_device*) ; 

__attribute__((used)) static void FUNC3(struct mei_device *dev)
{
	struct mei_txe_hw *hw = FUNC2(dev);
	u32 hintmsk;
	/* Enable the SEC_IPC_HOST_INT_MASK_IN_RDY interrupt */
	hintmsk = FUNC0(hw, SEC_IPC_HOST_INT_MASK_REG);
	hintmsk |= SEC_IPC_HOST_INT_MASK_IN_RDY;
	FUNC1(hw, SEC_IPC_HOST_INT_MASK_REG, hintmsk);
}