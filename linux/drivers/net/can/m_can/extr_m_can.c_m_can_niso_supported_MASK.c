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
struct m_can_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCCR_NISO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  M_CAN_CCCR ; 
 int /*<<< orphan*/  FUNC0 (struct m_can_classdev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct m_can_classdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct m_can_classdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static bool FUNC4(struct m_can_classdev *cdev)
{
	u32 cccr_reg, cccr_poll = 0;
	int niso_timeout = -ETIMEDOUT;
	int i;

	FUNC0(cdev, true);
	cccr_reg = FUNC1(cdev, M_CAN_CCCR);
	cccr_reg |= CCCR_NISO;
	FUNC2(cdev, M_CAN_CCCR, cccr_reg);

	for (i = 0; i <= 10; i++) {
		cccr_poll = FUNC1(cdev, M_CAN_CCCR);
		if (cccr_poll == cccr_reg) {
			niso_timeout = 0;
			break;
		}

		FUNC3(1, 5);
	}

	/* Clear NISO */
	cccr_reg &= ~(CCCR_NISO);
	FUNC2(cdev, M_CAN_CCCR, cccr_reg);

	FUNC0(cdev, false);

	/* return false if time out (-ETIMEDOUT), else return true */
	return !niso_timeout;
}