#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* net_dev; } ;
struct i2400m {int /*<<< orphan*/  (* bus_release ) (struct i2400m*) ;int /*<<< orphan*/  pm_notifier; TYPE_2__ wimax_dev; int /*<<< orphan*/  recovery_ws; int /*<<< orphan*/  reset_ws; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2400m*) ; 
 struct device* FUNC5 (struct i2400m*) ; 
 int /*<<< orphan*/  i2400m_dev_attr_group ; 
 int /*<<< orphan*/  FUNC6 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

void FUNC13(struct i2400m *i2400m)
{
	struct device *dev = FUNC5(i2400m);

	FUNC2(3, dev, "(i2400m %p)\n", i2400m);
	FUNC7(i2400m->wimax_dev.net_dev);

	FUNC6(i2400m);

	FUNC0(&i2400m->reset_ws);
	FUNC0(&i2400m->recovery_ws);

	FUNC4(i2400m);
	FUNC9(&i2400m->wimax_dev.net_dev->dev.kobj,
			   &i2400m_dev_attr_group);
	FUNC12(&i2400m->wimax_dev);
	FUNC10(i2400m->wimax_dev.net_dev);
	FUNC11(&i2400m->pm_notifier);
	if (i2400m->bus_release)
		i2400m->bus_release(i2400m);
	FUNC3(i2400m);
	FUNC1(3, dev, "(i2400m %p) = void\n", i2400m);
}