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
struct cx231xx_reg_seq {scalar_t__ sleep; int /*<<< orphan*/  val; int /*<<< orphan*/  bit; } ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

int FUNC2(struct cx231xx *dev, struct cx231xx_reg_seq *gpio)
{
	int rc = 0;

	if (!gpio)
		return rc;

	/* Send GPIO reset sequences specified at board entry */
	while (gpio->sleep >= 0) {
		rc = FUNC0(dev, gpio->bit, gpio->val);
		if (rc < 0)
			return rc;

		if (gpio->sleep > 0)
			FUNC1(gpio->sleep);

		gpio++;
	}
	return rc;
}