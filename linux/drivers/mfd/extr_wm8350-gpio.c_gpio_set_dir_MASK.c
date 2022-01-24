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
struct wm8350 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8350_GPIO_CONFIGURATION_I_O ; 
 int WM8350_GPIO_DIR_OUT ; 
 int FUNC0 (struct wm8350*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wm8350*) ; 
 int /*<<< orphan*/  FUNC2 (struct wm8350*) ; 
 int FUNC3 (struct wm8350*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct wm8350 *wm8350, int gpio, int dir)
{
	int ret;

	FUNC2(wm8350);
	if (dir == WM8350_GPIO_DIR_OUT)
		ret = FUNC0(wm8350,
					WM8350_GPIO_CONFIGURATION_I_O,
					1 << gpio);
	else
		ret = FUNC3(wm8350,
				      WM8350_GPIO_CONFIGURATION_I_O,
				      1 << gpio);
	FUNC1(wm8350);
	return ret;
}