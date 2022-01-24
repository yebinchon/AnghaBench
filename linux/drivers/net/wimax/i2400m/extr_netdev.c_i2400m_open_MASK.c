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
struct net_device {int dummy; } ;
struct i2400m {int /*<<< orphan*/  init_mutex; scalar_t__ updown; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct net_device*,struct i2400m*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct net_device*,struct i2400m*) ; 
 struct device* FUNC2 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2400m* FUNC5 (struct net_device*) ; 

__attribute__((used)) static
int FUNC6(struct net_device *net_dev)
{
	int result;
	struct i2400m *i2400m = FUNC5(net_dev);
	struct device *dev = FUNC2(i2400m);

	FUNC1(3, dev, "(net_dev %p [i2400m %p])\n", net_dev, i2400m);
	/* Make sure we wait until init is complete... */
	FUNC3(&i2400m->init_mutex);
	if (i2400m->updown)
		result = 0;
	else
		result = -EBUSY;
	FUNC4(&i2400m->init_mutex);
	FUNC0(3, dev, "(net_dev %p [i2400m %p]) = %d\n",
		net_dev, i2400m, result);
	return result;
}