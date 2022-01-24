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
struct softing_priv {unsigned long output; struct softing* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct softing {TYPE_1__ fw; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int ERESTARTSYS ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct softing_priv* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct net_device *ndev = FUNC5(dev);
	struct softing_priv *priv = FUNC3(ndev);
	struct softing *card = priv->card;
	unsigned long val;
	int ret;

	ret = FUNC0(buf, 0, &val);
	if (ret < 0)
		return ret;
	val &= 0xFF;

	ret = FUNC1(&card->fw.lock);
	if (ret)
		return -ERESTARTSYS;
	if (FUNC4(ndev)) {
		FUNC2(&card->fw.lock);
		return -EBUSY;
	}
	priv->output = val;
	FUNC2(&card->fw.lock);
	return count;
}