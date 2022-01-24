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
struct niu {int /*<<< orphan*/  phy_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MRVL88X2011_LED_BLINK_CTL ; 
 int MRVL88X2011_LED_BLKRATE_MASK ; 
 int /*<<< orphan*/  MRVL88X2011_USER_DEV2_ADDR ; 
 int FUNC0 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct niu *np, int rate)
{
	int	err;

	err = FUNC0(np, np->phy_addr, MRVL88X2011_USER_DEV2_ADDR,
			MRVL88X2011_LED_BLINK_CTL);
	if (err >= 0) {
		err &= ~MRVL88X2011_LED_BLKRATE_MASK;
		err |= (rate << 4);

		err = FUNC1(np, np->phy_addr, MRVL88X2011_USER_DEV2_ADDR,
				 MRVL88X2011_LED_BLINK_CTL, err);
	}

	return err;
}