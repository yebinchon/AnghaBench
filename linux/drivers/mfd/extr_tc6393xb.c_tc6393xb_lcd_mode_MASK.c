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
struct tc6393xb {int /*<<< orphan*/  lock; scalar_t__ scr; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fb_videomode {int pixclock; } ;

/* Variables and functions */
 scalar_t__ SCR_PLL1CR ; 
 struct tc6393xb* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct platform_device *fb,
					const struct fb_videomode *mode) {
	struct tc6393xb *tc6393xb = FUNC0(fb->dev.parent);
	unsigned long flags;

	FUNC2(&tc6393xb->lock, flags);

	FUNC1(mode->pixclock, tc6393xb->scr + SCR_PLL1CR + 0);
	FUNC1(mode->pixclock >> 16, tc6393xb->scr + SCR_PLL1CR + 2);

	FUNC3(&tc6393xb->lock, flags);

	return 0;
}