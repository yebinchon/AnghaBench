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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int /*<<< orphan*/  TPS_VDCDC2 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* the_tps ; 

int FUNC5(unsigned value)
{
	int	 status;
	unsigned vdcdc2;

	if (!the_tps)
		return -ENODEV;

	FUNC2(&the_tps->lock);

	vdcdc2 = FUNC0(the_tps->client, TPS_VDCDC2);
	vdcdc2 &= ~(1 << 1);
	if (value)
		vdcdc2 |= (1 << 1);
	status = FUNC1(the_tps->client,
		TPS_VDCDC2, vdcdc2);

	FUNC4("%s: vibrator %s\n", DRIVER_NAME, value ? "on" : "off");

	FUNC3(&the_tps->lock);
	return status;
}