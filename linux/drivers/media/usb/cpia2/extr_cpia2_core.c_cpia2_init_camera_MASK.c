#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ asic_id; } ;
struct TYPE_4__ {TYPE_1__ version; } ;
struct camera_data {int mmapped; TYPE_2__ params; } ;

/* Variables and functions */
 scalar_t__ CPIA2_ASIC_672 ; 
 int /*<<< orphan*/  CPIA2_CMD_SET_VC_MP_GPIO_DATA ; 
 int /*<<< orphan*/  CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  TRANSFER_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct camera_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct camera_data*) ; 

int FUNC7(struct camera_data *cam)
{
	FUNC0("Start\n");

	cam->mmapped = false;

	/* Get sensor and asic types before reset. */
	FUNC4(cam);
	FUNC3(cam);
	if (cam->params.version.asic_id != CPIA2_ASIC_672) {
		FUNC1("Device IO error (asicID has incorrect value of 0x%X\n",
		    cam->params.version.asic_id);
		return -ENODEV;
	}

	/* Set GPIO direction and data to a safe state. */
	FUNC2(cam, CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION,
			 TRANSFER_WRITE, 0);
	FUNC2(cam, CPIA2_CMD_SET_VC_MP_GPIO_DATA,
			 TRANSFER_WRITE, 0);

	/* resetting struct requires version info for sensor and asic types */
	FUNC6(cam);

	FUNC5(cam);

	FUNC0("End\n");

	return 0;
}