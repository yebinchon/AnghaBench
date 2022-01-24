#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  gpio_data; int /*<<< orphan*/  gpio_direction; } ;
struct TYPE_4__ {int /*<<< orphan*/  stream_mode; } ;
struct TYPE_6__ {TYPE_2__ vp_params; TYPE_1__ camera_state; } ;
struct camera_data {int /*<<< orphan*/  hdl; TYPE_3__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA2_CMD_SET_VC_MP_GPIO_DATA ; 
 int /*<<< orphan*/  CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION ; 
 int /*<<< orphan*/  TRANSFER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct camera_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct camera_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct camera_data*) ; 

__attribute__((used)) static int FUNC5(struct camera_data *cam)
{
	/**
	 * Don't set target_kb here, it will be set later.
	 * framerate and user_mode were already set (set_default_user_mode).
	 **/

	FUNC1(cam,
					  cam->params.camera_state.stream_mode);

	FUNC0(cam,
			 CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION,
			 TRANSFER_WRITE, cam->params.vp_params.gpio_direction);
	FUNC0(cam, CPIA2_CMD_SET_VC_MP_GPIO_DATA, TRANSFER_WRITE,
			 cam->params.vp_params.gpio_data);

	FUNC3(&cam->hdl);

	FUNC4(cam);

	FUNC2(cam);

	return 0;
}