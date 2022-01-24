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
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC5(struct qlcnic_adapter *adapter)
{
	if (FUNC3(adapter)) {
		FUNC0(&adapter->pdev->dev,
				"unified image: header validation failed\n");
		return -EINVAL;
	}

	if (FUNC4(adapter)) {
		FUNC0(&adapter->pdev->dev,
				"unified image: product validation failed\n");
		return -EINVAL;
	}

	if (FUNC1(adapter)) {
		FUNC0(&adapter->pdev->dev,
				"unified image: bootld validation failed\n");
		return -EINVAL;
	}

	if (FUNC2(adapter)) {
		FUNC0(&adapter->pdev->dev,
				"unified image: firmware validation failed\n");
		return -EINVAL;
	}

	return 0;
}