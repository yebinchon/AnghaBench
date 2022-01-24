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
struct em28xx_IR {int /*<<< orphan*/  work; } ;
struct em28xx {int /*<<< orphan*/  buttons_query_work; TYPE_1__* intf; scalar_t__ is_audio_only; struct em28xx_IR* ir; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(struct em28xx *dev)
{
	struct em28xx_IR *ir = dev->ir;

	if (dev->is_audio_only)
		return 0;

	FUNC1(&dev->intf->dev, "Suspending input extension\n");
	if (ir)
		FUNC0(&ir->work);
	FUNC0(&dev->buttons_query_work);
	/*
	 * is canceling delayed work sufficient or does the rc event
	 * kthread needs stopping? kthread is stopped in
	 * ir_raw_event_unregister()
	 */
	return 0;
}