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
struct phy_device {int /*<<< orphan*/  interface; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy_device*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*) ; 
 struct phy_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct phy_device *phydev = FUNC3(dev);
	const char *mode = NULL;

	if (FUNC0(phydev))
		mode = "internal";
	else
		mode = FUNC1(phydev->interface);

	return FUNC2(buf, "%s\n", mode);
}