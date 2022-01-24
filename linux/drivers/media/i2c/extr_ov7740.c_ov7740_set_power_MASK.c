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
struct ov7740 {scalar_t__ pwdn_gpio; int /*<<< orphan*/  xvclk; scalar_t__ resetb_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct ov7740 *ov7740, int on)
{
	int ret;

	if (on) {
		ret = FUNC1(ov7740->xvclk);
		if (ret)
			return ret;

		if (ov7740->pwdn_gpio)
			FUNC2(ov7740->pwdn_gpio, 0);

		if (ov7740->resetb_gpio) {
			FUNC3(ov7740->resetb_gpio, 1);
			FUNC4(500, 1000);
			FUNC3(ov7740->resetb_gpio, 0);
			FUNC4(3000, 5000);
		}
	} else {
		FUNC0(ov7740->xvclk);

		if (ov7740->pwdn_gpio)
			FUNC2(ov7740->pwdn_gpio, 0);
	}

	return 0;
}