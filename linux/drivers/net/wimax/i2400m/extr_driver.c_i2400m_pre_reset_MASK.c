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
struct TYPE_2__ {int /*<<< orphan*/  net_dev; } ;
struct i2400m {int /*<<< orphan*/  (* bus_release ) (struct i2400m*) ;int /*<<< orphan*/  init_mutex; TYPE_1__ wimax_dev; scalar_t__ updown; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*) ; 
 struct device* FUNC4 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2400m*) ; 

int FUNC9(struct i2400m *i2400m)
{
	struct device *dev = FUNC4(i2400m);

	FUNC2(3, dev, "(i2400m %p)\n", i2400m);
	FUNC3(1, dev, "pre-reset shut down\n");

	FUNC5(&i2400m->init_mutex);
	if (i2400m->updown) {
		FUNC7(i2400m->wimax_dev.net_dev);
		FUNC0(i2400m);
		/* down't set updown to zero -- this way
		 * post_reset can restore properly */
	}
	FUNC6(&i2400m->init_mutex);
	if (i2400m->bus_release)
		i2400m->bus_release(i2400m);
	FUNC1(3, dev, "(i2400m %p) = 0\n", i2400m);
	return 0;
}