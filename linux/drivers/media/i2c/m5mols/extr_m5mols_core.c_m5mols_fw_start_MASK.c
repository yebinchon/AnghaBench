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
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {int isp_ready; int /*<<< orphan*/  irq_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLASH_CAM_START ; 
 int M5MOLS_I2C_RDY_WAIT_FL ; 
 int /*<<< orphan*/  PARM_INTERFACE ; 
 int /*<<< orphan*/  REG_INTERFACE_MIPI ; 
 int REG_INT_AF ; 
 int REG_INT_CAPTURE ; 
 int /*<<< orphan*/  REG_INT_MODE ; 
 int /*<<< orphan*/  REG_IN_FLASH_MODE ; 
 int /*<<< orphan*/  REG_START_ARM_BOOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  m5mols_debug ; 
 int FUNC2 (struct v4l2_subdev*,int) ; 
 int FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  m5mols_sensor_power ; 
 int FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct m5mols_info* FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd)
{
	struct m5mols_info *info = FUNC7(sd);
	int ret;

	FUNC0(&info->irq_done, 0);
	/* Wait until I2C slave is initialized in Flash Writer mode */
	ret = FUNC1(sd, FLASH_CAM_START, REG_IN_FLASH_MODE,
			       M5MOLS_I2C_RDY_WAIT_FL | 0xff, -1);
	if (!ret)
		ret = FUNC6(sd, FLASH_CAM_START, REG_START_ARM_BOOT);
	if (!ret)
		ret = FUNC5(sd, REG_INT_MODE, 2000);
	if (ret < 0)
		return ret;

	info->isp_ready = 1;

	ret = FUNC3(sd);
	if (!ret)
		ret = FUNC4(sd, m5mols_sensor_power);
	if (ret)
		return ret;

	FUNC8(1, m5mols_debug, sd, "Success ARM Booting\n");

	ret = FUNC6(sd, PARM_INTERFACE, REG_INTERFACE_MIPI);
	if (!ret)
		ret = FUNC2(sd,
				REG_INT_AF | REG_INT_CAPTURE);

	return ret;
}