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
 int WM8350_GPIO_ACTIVE_HIGH ; 
 int /*<<< orphan*/  WM8350_GPIO_PIN_POLARITY_TYPE ; 
 int FUNC0 (struct wm8350*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct wm8350*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct wm8350 *wm8350, int gpio, int pol)
{
	if (pol == WM8350_GPIO_ACTIVE_HIGH)
		return FUNC1(wm8350,
				       WM8350_GPIO_PIN_POLARITY_TYPE,
				       1 << gpio);
	else
		return FUNC0(wm8350,
					 WM8350_GPIO_PIN_POLARITY_TYPE,
					 1 << gpio);
}