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
struct net_device {int /*<<< orphan*/  name; } ;
struct ipw2100_priv {TYPE_1__* ieee; struct net_device* net_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {unsigned long scan_age; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct ipw2100_priv* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *d, struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct ipw2100_priv *priv = FUNC1(d);
	struct net_device *dev = priv->net_dev;
	unsigned long val;
	int ret;

	(void)dev;		/* kill unused-var warning for debug-only code */

	FUNC0("enter\n");

	ret = FUNC2(buf, 0, &val);
	if (ret) {
		FUNC0("%s: user supplied invalid value.\n", dev->name);
	} else {
		priv->ieee->scan_age = val;
		FUNC0("set scan_age = %u\n", priv->ieee->scan_age);
	}

	FUNC0("exit\n");
	return FUNC3(buf, count);
}