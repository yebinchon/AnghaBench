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
struct mei_cl_device {int is_added; int /*<<< orphan*/  dev; int /*<<< orphan*/  me_cl; TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mei_cl_device *cldev)
{
	int ret;

	FUNC0(cldev->bus->dev, "adding %pUL:%02X\n",
		FUNC2(cldev->me_cl),
		FUNC3(cldev->me_cl));
	ret = FUNC1(&cldev->dev);
	if (!ret)
		cldev->is_added = 1;

	return ret;
}