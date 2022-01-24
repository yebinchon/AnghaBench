#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  status; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; TYPE_1__ ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PRCM_ACK_MB2_DPS_STATUS ; 
 int /*<<< orphan*/  PRCM_ARM_IT1_CLR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__ mb2_transfer ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ tcdm_base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(void)
{
	mb2_transfer.ack.status = FUNC2(tcdm_base + PRCM_ACK_MB2_DPS_STATUS);
	FUNC3(FUNC0(2), PRCM_ARM_IT1_CLR);
	FUNC1(&mb2_transfer.work);
	return false;
}