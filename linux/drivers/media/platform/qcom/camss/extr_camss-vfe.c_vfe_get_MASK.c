#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfe_device {scalar_t__ power_count; int /*<<< orphan*/  power_lock; int /*<<< orphan*/  id; TYPE_1__* camss; int /*<<< orphan*/  clock; int /*<<< orphan*/  nclocks; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct vfe_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct vfe_device*) ; 
 int FUNC10 (struct vfe_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct vfe_device*) ; 
 int FUNC12 (struct vfe_device*) ; 

__attribute__((used)) static int FUNC13(struct vfe_device *vfe)
{
	int ret;

	FUNC4(&vfe->power_lock);

	if (vfe->power_count == 0) {
		ret = FUNC3(vfe->camss, vfe->id);
		if (ret < 0)
			goto error_pm_domain;

		ret = FUNC6(vfe->camss->dev);
		if (ret < 0)
			goto error_pm_runtime_get;

		ret = FUNC12(vfe);
		if (ret < 0)
			goto error_clocks;

		ret = FUNC1(vfe->nclocks, vfe->clock,
					  vfe->camss->dev);
		if (ret < 0)
			goto error_clocks;

		ret = FUNC10(vfe);
		if (ret < 0)
			goto error_reset;

		FUNC11(vfe);

		FUNC9(vfe);
	} else {
		ret = FUNC8(vfe);
		if (ret < 0)
			goto error_clocks;
	}
	vfe->power_count++;

	FUNC5(&vfe->power_lock);

	return 0;

error_reset:
	FUNC0(vfe->nclocks, vfe->clock);

error_clocks:
	FUNC7(vfe->camss->dev);

error_pm_runtime_get:
	FUNC2(vfe->camss, vfe->id);

error_pm_domain:
	FUNC5(&vfe->power_lock);

	return ret;
}