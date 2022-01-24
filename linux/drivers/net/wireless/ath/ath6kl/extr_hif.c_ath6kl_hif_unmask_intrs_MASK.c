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
struct ath6kl_device {int /*<<< orphan*/  ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath6kl_device*) ; 
 int FUNC1 (struct ath6kl_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct ath6kl_device *dev)
{
	int status = 0;

	/*
	 * Make sure interrupt are disabled before unmasking at the HIF
	 * layer. The rationale here is that between device insertion
	 * (where we clear the interrupts the first time) and when HTC
	 * is finally ready to handle interrupts, other software can perform
	 * target "soft" resets. The ATH6KL interrupt enables reset back to an
	 * "enabled" state when this happens.
	 */
	FUNC0(dev);

	/* unmask the host controller interrupts */
	FUNC2(dev->ar);
	status = FUNC1(dev);

	return status;
}