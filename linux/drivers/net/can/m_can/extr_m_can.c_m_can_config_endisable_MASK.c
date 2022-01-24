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
struct m_can_classdev {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int CCCR_CCE ; 
 int CCCR_CSR ; 
 int CCCR_INIT ; 
 int /*<<< orphan*/  M_CAN_CCCR ; 
 int FUNC0 (struct m_can_classdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct m_can_classdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct m_can_classdev *cdev, bool enable)
{
	u32 cccr = FUNC0(cdev, M_CAN_CCCR);
	u32 timeout = 10;
	u32 val = 0;

	/* Clear the Clock stop request if it was set */
	if (cccr & CCCR_CSR)
		cccr &= ~CCCR_CSR;

	if (enable) {
		/* Clear the Clock stop request if it was set */
		if (cccr & CCCR_CSR)
			cccr &= ~CCCR_CSR;

		/* enable m_can configuration */
		FUNC1(cdev, M_CAN_CCCR, cccr | CCCR_INIT);
		FUNC3(5);
		/* CCCR.CCE can only be set/reset while CCCR.INIT = '1' */
		FUNC1(cdev, M_CAN_CCCR, cccr | CCCR_INIT | CCCR_CCE);
	} else {
		FUNC1(cdev, M_CAN_CCCR, cccr & ~(CCCR_INIT | CCCR_CCE));
	}

	/* there's a delay for module initialization */
	if (enable)
		val = CCCR_INIT | CCCR_CCE;

	while ((FUNC0(cdev, M_CAN_CCCR) & (CCCR_INIT | CCCR_CCE)) != val) {
		if (timeout == 0) {
			FUNC2(cdev->net, "Failed to init module\n");
			return;
		}
		timeout--;
		FUNC3(1);
	}
}