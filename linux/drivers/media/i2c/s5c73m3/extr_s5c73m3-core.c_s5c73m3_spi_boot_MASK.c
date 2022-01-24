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
struct s5c73m3 {struct v4l2_subdev sensor_sd; } ;

/* Variables and functions */
 int FUNC0 (struct s5c73m3*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 
 int FUNC2 (struct s5c73m3*) ; 
 int FUNC3 (struct s5c73m3*,int,int,int) ; 
 int FUNC4 (struct s5c73m3*,int,int) ; 
 scalar_t__ update_fw ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct s5c73m3 *state, bool load_fw)
{
	struct v4l2_subdev *sd = &state->sensor_sd;
	int ret;

	/* Run ARM MCU */
	ret = FUNC4(state, 0x30000004, 0xffff);
	if (ret < 0)
		return ret;

	FUNC5(400, 500);

	/* Check booting status */
	ret = FUNC3(state, 0x0c, 100, 3);
	if (ret < 0) {
		FUNC6(sd, "booting failed: %d\n", ret);
		return ret;
	}

	/* P,M,S and Boot Mode */
	ret = FUNC4(state, 0x30100014, 0x2146);
	if (ret < 0)
		return ret;

	ret = FUNC4(state, 0x30100010, 0x210c);
	if (ret < 0)
		return ret;

	FUNC5(200, 250);

	/* Check SPI status */
	ret = FUNC3(state, 0x210d, 100, 300);
	if (ret < 0)
		FUNC6(sd, "SPI not ready: %d\n", ret);

	/* Firmware download over SPI */
	if (load_fw)
		FUNC1(sd);

	/* MCU reset */
	ret = FUNC4(state, 0x30000004, 0xfffd);
	if (ret < 0)
		return ret;

	/* Remap */
	ret = FUNC4(state, 0x301000a4, 0x0183);
	if (ret < 0)
		return ret;

	/* MCU restart */
	ret = FUNC4(state, 0x30000004, 0xffff);
	if (ret < 0 || !load_fw)
		return ret;

	ret = FUNC2(state);
	if (ret < 0)
		return ret;

	if (load_fw && update_fw) {
		ret = FUNC0(state);
		update_fw = 0;
	}

	return ret;
}