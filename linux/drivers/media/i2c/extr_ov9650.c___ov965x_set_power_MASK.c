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
struct ov965x {scalar_t__ streaming; int /*<<< orphan*/  clk; int /*<<< orphan*/ * gpios; } ;

/* Variables and functions */
 size_t GPIO_PWDN ; 
 size_t GPIO_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ov965x *ov965x, int on)
{
	if (on) {
		int ret = FUNC1(ov965x->clk);

		if (ret)
			return ret;

		FUNC2(ov965x->gpios[GPIO_PWDN], 0);
		FUNC2(ov965x->gpios[GPIO_RST], 0);
		FUNC3(25);
	} else {
		FUNC2(ov965x->gpios[GPIO_RST], 1);
		FUNC2(ov965x->gpios[GPIO_PWDN], 1);

		FUNC0(ov965x->clk);
	}

	ov965x->streaming = 0;

	return 0;
}