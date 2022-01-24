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
struct mac_device {TYPE_1__* res; } ;
struct dpaa_priv {struct mac_device* mac_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 struct dpaa_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				  struct device_attribute *attr, char *buf)
{
	struct dpaa_priv *priv = FUNC0(FUNC2(dev));
	struct mac_device *mac_dev = priv->mac_dev;

	if (mac_dev)
		return FUNC1(buf, "%llx",
				(unsigned long long)mac_dev->res->start);
	else
		return FUNC1(buf, "none");
}