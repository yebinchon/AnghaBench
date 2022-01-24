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
struct rc_dev {int /*<<< orphan*/  dev; TYPE_1__* raw; } ;
struct ir_raw_event {int /*<<< orphan*/  pulse; int /*<<< orphan*/  duration; } ;
struct TYPE_2__ {int /*<<< orphan*/  kfifo; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ir_raw_event) ; 

int FUNC5(struct rc_dev *dev, struct ir_raw_event *ev)
{
	if (!dev->raw)
		return -EINVAL;

	FUNC2(&dev->dev, "sample: (%05dus %s)\n",
		FUNC1(ev->duration), FUNC0(ev->pulse));

	if (!FUNC4(&dev->raw->kfifo, *ev)) {
		FUNC3(&dev->dev, "IR event FIFO is full!\n");
		return -ENOSPC;
	}

	return 0;
}