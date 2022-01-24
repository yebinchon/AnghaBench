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
struct regmap {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  LOCHNAGAR_BOOT_DELAY_MS ; 
 int LOCHNAGAR_BOOT_RETRIES ; 
 int /*<<< orphan*/  LOCHNAGAR_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct regmap *regmap, unsigned int *id)
{
	int i, ret;

	for (i = 0; i < LOCHNAGAR_BOOT_RETRIES; ++i) {
		FUNC0(LOCHNAGAR_BOOT_DELAY_MS);

		/* The reset register will return the device ID when read */
		ret = FUNC1(regmap, LOCHNAGAR_SOFTWARE_RESET, id);
		if (!ret)
			return ret;
	}

	return -ETIMEDOUT;
}