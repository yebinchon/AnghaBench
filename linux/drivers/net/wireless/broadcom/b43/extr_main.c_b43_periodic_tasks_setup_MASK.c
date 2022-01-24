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
struct delayed_work {int dummy; } ;
struct b43_wldev {TYPE_1__* wl; scalar_t__ periodic_state; struct delayed_work periodic_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delayed_work*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b43_periodic_work_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct delayed_work*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev)
{
	struct delayed_work *work = &dev->periodic_work;

	dev->periodic_state = 0;
	FUNC0(work, b43_periodic_work_handler);
	FUNC1(dev->wl->hw, work, 0);
}