#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tc3589x {int /*<<< orphan*/  dev; int /*<<< orphan*/  domain; TYPE_1__* pdata; } ;
struct TYPE_2__ {unsigned int block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int TC3589x_BLOCK_GPIO ; 
 unsigned int TC3589x_BLOCK_KEYPAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tc3589x_dev_gpio ; 
 int /*<<< orphan*/  tc3589x_dev_keypad ; 

__attribute__((used)) static int FUNC4(struct tc3589x *tc3589x)
{
	int ret = 0;
	unsigned int blocks = tc3589x->pdata->block;

	if (blocks & TC3589x_BLOCK_GPIO) {
		ret = FUNC3(tc3589x->dev, -1, tc3589x_dev_gpio,
				      FUNC0(tc3589x_dev_gpio), NULL,
				      0, tc3589x->domain);
		if (ret) {
			FUNC1(tc3589x->dev, "failed to add gpio child\n");
			return ret;
		}
		FUNC2(tc3589x->dev, "added gpio block\n");
	}

	if (blocks & TC3589x_BLOCK_KEYPAD) {
		ret = FUNC3(tc3589x->dev, -1, tc3589x_dev_keypad,
				      FUNC0(tc3589x_dev_keypad), NULL,
				      0, tc3589x->domain);
		if (ret) {
			FUNC1(tc3589x->dev, "failed to keypad child\n");
			return ret;
		}
		FUNC2(tc3589x->dev, "added keypad block\n");
	}

	return ret;
}