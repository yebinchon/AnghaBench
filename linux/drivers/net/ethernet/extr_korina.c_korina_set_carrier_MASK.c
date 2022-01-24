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
struct mii_if_info {int /*<<< orphan*/  dev; scalar_t__ force_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mii_if_info *mii)
{
	if (mii->force_media) {
		/* autoneg is off: Link is always assumed to be up */
		if (!FUNC1(mii->dev))
			FUNC2(mii->dev);
	} else  /* Let MMI library update carrier status */
		FUNC0(mii->dev, 0);
}