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
struct mei_txe_hw {int dummy; } ;
struct mei_device {int dummy; } ;

/* Variables and functions */
 int HICR_SEC_IPC_READINESS_HOST_RDY ; 
 int /*<<< orphan*/  HICR_SEC_IPC_READINESS_REG ; 
 int FUNC0 (struct mei_txe_hw*,int /*<<< orphan*/ ) ; 
 struct mei_txe_hw* FUNC1 (struct mei_device*) ; 

__attribute__((used)) static inline bool FUNC2(struct mei_device *dev)
{
	struct mei_txe_hw *hw = FUNC1(dev);
	u32 reg = FUNC0(hw, HICR_SEC_IPC_READINESS_REG);

	return !!(reg & HICR_SEC_IPC_READINESS_HOST_RDY);
}