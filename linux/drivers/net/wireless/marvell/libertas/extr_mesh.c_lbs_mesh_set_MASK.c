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
struct lbs_private {int /*<<< orphan*/  mesh_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int*) ; 
 TYPE_1__* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, const char * buf, size_t count)
{
	struct lbs_private *priv = FUNC3(dev)->ml_priv;
	int enable;

	FUNC2(buf, "%x", &enable);
	enable = !!enable;
	if (enable == !!priv->mesh_dev)
		return count;

	if (enable)
		FUNC0(priv);
	else
		FUNC1(priv);

	return count;
}