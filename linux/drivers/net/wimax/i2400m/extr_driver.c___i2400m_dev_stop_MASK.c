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
struct wimax_dev {int dummy; } ;
struct i2400m {int /*<<< orphan*/  work_queue; int /*<<< orphan*/  (* bus_dev_stop ) (struct i2400m*) ;scalar_t__ ready; int /*<<< orphan*/  msg_completion; struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL3RST ; 
 int /*<<< orphan*/  WIMAX_ST_DOWN ; 
 int /*<<< orphan*/  __WIMAX_ST_QUIESCING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct device* FUNC5 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2400m*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC12 (struct wimax_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static
void FUNC14(struct i2400m *i2400m)
{
	struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
	struct device *dev = FUNC5(i2400m);

	FUNC2(3, dev, "(i2400m %p)\n", i2400m);
	FUNC12(wimax_dev, __WIMAX_ST_QUIESCING);
	FUNC7(i2400m, -EL3RST);
	FUNC0(&i2400m->msg_completion);
	FUNC8(i2400m);
	FUNC6(i2400m);
	/*
	 * Make sure no report hooks are running *before* we stop the
	 * communication infrastructure with the device.
	 */
	i2400m->ready = 0;	/* nobody can queue work anymore */
	FUNC13();		/* see i2400m->ready's documentation  */
	FUNC4(i2400m->work_queue);

	if (i2400m->bus_dev_stop)
		i2400m->bus_dev_stop(i2400m);
	FUNC3(i2400m->work_queue);
	FUNC9(i2400m);
	FUNC10(i2400m);
	FUNC12(wimax_dev, WIMAX_ST_DOWN);
	FUNC1(3, dev, "(i2400m %p) = 0\n", i2400m);
}