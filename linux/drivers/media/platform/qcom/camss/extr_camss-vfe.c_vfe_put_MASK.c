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
struct vfe_device {int power_count; int /*<<< orphan*/  power_lock; int /*<<< orphan*/  id; TYPE_1__* camss; int /*<<< orphan*/  clock; int /*<<< orphan*/  nclocks; scalar_t__ was_streaming; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vfe_device*) ; 

__attribute__((used)) static void FUNC7(struct vfe_device *vfe)
{
	FUNC3(&vfe->power_lock);

	if (vfe->power_count == 0) {
		FUNC2(vfe->camss->dev, "vfe power off on power_count == 0\n");
		goto exit;
	} else if (vfe->power_count == 1) {
		if (vfe->was_streaming) {
			vfe->was_streaming = 0;
			FUNC6(vfe);
		}
		FUNC0(vfe->nclocks, vfe->clock);
		FUNC5(vfe->camss->dev);
		FUNC1(vfe->camss, vfe->id);
	}

	vfe->power_count--;

exit:
	FUNC4(&vfe->power_lock);
}