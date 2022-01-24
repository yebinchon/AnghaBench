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
typedef  scalar_t__ u32 ;
struct device_node {int dummy; } ;
struct amba_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PL172_MAX_CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*,scalar_t__*) ; 
 int FUNC2 (struct amba_device*,struct device_node*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct amba_device *adev,
				 struct device_node *np)
{
	u32 cs;

	if (!FUNC1(np, "mpmc,cs", &cs)) {
		if (cs >= PL172_MAX_CS) {
			FUNC0(&adev->dev, "cs%u invalid\n", cs);
			return -EINVAL;
		}

		return FUNC2(adev, np, cs);
	}

	FUNC0(&adev->dev, "cs property required\n");

	return -EINVAL;
}