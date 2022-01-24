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
struct net_device {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct at91_priv {unsigned long mb0_id; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned long CAN_EFF_FLAG ; 
 unsigned long CAN_EFF_MASK ; 
 unsigned long CAN_SFF_MASK ; 
 int EBUSY ; 
 int IFF_UP ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct at91_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct net_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct net_device *ndev = FUNC4(dev);
	struct at91_priv *priv = FUNC1(ndev);
	unsigned long can_id;
	ssize_t ret;
	int err;

	FUNC2();

	if (ndev->flags & IFF_UP) {
		ret = -EBUSY;
		goto out;
	}

	err = FUNC0(buf, 0, &can_id);
	if (err) {
		ret = err;
		goto out;
	}

	if (can_id & CAN_EFF_FLAG)
		can_id &= CAN_EFF_MASK | CAN_EFF_FLAG;
	else
		can_id &= CAN_SFF_MASK;

	priv->mb0_id = can_id;
	ret = count;

 out:
	FUNC3();
	return ret;
}