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
typedef  int u8 ;
struct b53_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ARLTBL_START_DONE ; 
 int /*<<< orphan*/  B53_ARLIO_PAGE ; 
 int /*<<< orphan*/  B53_ARLTBL_RW_CTRL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct b53_device *dev)
{
	unsigned int timeout = 10;
	u8 reg;

	do {
		FUNC0(dev, B53_ARLIO_PAGE, B53_ARLTBL_RW_CTRL, &reg);
		if (!(reg & ARLTBL_START_DONE))
			return 0;

		FUNC2(1000, 2000);
	} while (timeout--);

	FUNC1(dev->dev, "timeout waiting for ARL to finish: 0x%02x\n", reg);

	return -ETIMEDOUT;
}