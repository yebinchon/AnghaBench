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
struct mei_txe_hw {int dummy; } ;
struct mei_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HHISR_REG ; 
 int /*<<< orphan*/  HISR_INT_STS_MSK ; 
 int /*<<< orphan*/  HISR_REG ; 
 int /*<<< orphan*/  IPC_HHIER_MSK ; 
 int /*<<< orphan*/  SEC_IPC_HOST_INT_STATUS_PENDING ; 
 int /*<<< orphan*/  SEC_IPC_HOST_INT_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct mei_txe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_txe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mei_txe_hw* FUNC2 (struct mei_device*) ; 

__attribute__((used)) static inline void FUNC3(struct mei_device *dev)
{
	struct mei_txe_hw *hw = FUNC2(dev);

	FUNC1(hw, SEC_IPC_HOST_INT_STATUS_REG,
		SEC_IPC_HOST_INT_STATUS_PENDING);
	FUNC0(hw, HISR_REG, HISR_INT_STS_MSK);
	FUNC0(hw, HHISR_REG, IPC_HHIER_MSK);
}