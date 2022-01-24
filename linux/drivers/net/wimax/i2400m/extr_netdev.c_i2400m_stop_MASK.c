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
struct i2400m {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct net_device*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct net_device*,struct i2400m*) ; 
 struct device* FUNC2 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2400m*) ; 
 struct i2400m* FUNC4 (struct net_device*) ; 

__attribute__((used)) static
int FUNC5(struct net_device *net_dev)
{
	struct i2400m *i2400m = FUNC4(net_dev);
	struct device *dev = FUNC2(i2400m);

	FUNC1(3, dev, "(net_dev %p [i2400m %p])\n", net_dev, i2400m);
	FUNC3(i2400m);
	FUNC0(3, dev, "(net_dev %p [i2400m %p]) = 0\n", net_dev, i2400m);
	return 0;
}