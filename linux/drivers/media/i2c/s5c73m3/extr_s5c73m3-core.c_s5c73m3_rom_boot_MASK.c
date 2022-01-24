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
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct s5c73m3 {int isp_ready; struct v4l2_subdev sensor_sd; } ;

/* Variables and functions */
 int FUNC0 (int const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct s5c73m3*) ; 
 int FUNC3 (struct s5c73m3*,int,int,int) ; 
 int FUNC4 (struct s5c73m3*,int const,int const) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct s5c73m3 *state, bool load_fw)
{
	static const u32 boot_regs[][2] = {
		{ 0x3100010c, 0x0044 },
		{ 0x31000108, 0x000d },
		{ 0x31000304, 0x0001 },
		{ 0x00010000, 0x5800 },
		{ 0x00010002, 0x0002 },
		{ 0x31000000, 0x0001 },
		{ 0x30100014, 0x1b85 },
		{ 0x30100010, 0x230c }
	};
	struct v4l2_subdev *sd = &state->sensor_sd;
	int i, ret;

	/* Run ARM MCU */
	ret = FUNC4(state, 0x30000004, 0xffff);
	if (ret < 0)
		return ret;
	FUNC5(400, 450);

	/* Check booting status */
	ret = FUNC3(state, 0x0c, 100, 4);
	if (ret < 0) {
		FUNC6(sd, "Booting failed: %d\n", ret);
		return ret;
	}

	for (i = 0; i < FUNC0(boot_regs); i++) {
		ret = FUNC4(state, boot_regs[i][0], boot_regs[i][1]);
		if (ret < 0)
			return ret;
	}
	FUNC1(200);

	/* Check the binary read status */
	ret = FUNC3(state, 0x230e, 1000, 150);
	if (ret < 0) {
		FUNC6(sd, "Binary read failed: %d\n", ret);
		return ret;
	}

	/* ARM reset */
	ret = FUNC4(state, 0x30000004, 0xfffd);
	if (ret < 0)
		return ret;
	/* Remap */
	ret = FUNC4(state, 0x301000a4, 0x0183);
	if (ret < 0)
		return ret;
	/* MCU re-start */
	ret = FUNC4(state, 0x30000004, 0xffff);
	if (ret < 0)
		return ret;

	state->isp_ready = 1;

	return FUNC2(state);
}