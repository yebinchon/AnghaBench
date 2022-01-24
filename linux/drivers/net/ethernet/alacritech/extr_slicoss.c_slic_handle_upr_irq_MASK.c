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
struct slic_upr {scalar_t__ type; } ;
struct slic_device {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int SLIC_ISR_UPCERR_MASK ; 
 scalar_t__ SLIC_UPR_LSTAT ; 
 int /*<<< orphan*/  FUNC0 (struct slic_upr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct slic_upr* FUNC2 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct slic_device*,struct slic_upr*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct slic_device *sdev, u32 irqs)
{
	struct slic_upr *upr;

	/* remove upr that caused this irq (always the first entry in list) */
	upr = FUNC2(sdev);
	if (!upr) {
		FUNC1(sdev->netdev, "no upr found on list\n");
		return;
	}

	if (upr->type == SLIC_UPR_LSTAT) {
		if (FUNC5(irqs & SLIC_ISR_UPCERR_MASK)) {
			/* try again */
			FUNC4(sdev, upr);
			return;
		}
		FUNC3(sdev);
	}
	FUNC0(upr);
}