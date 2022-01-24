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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/ * inputs ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int,int const) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			     u32 input, u32 output, u32 config)
{
	int data;

	/* RJ:   input = 0: ST8 (PCTV) input
		 input = 1: COMPOSITE  input
		 input = 2: SVHS       input  */

	const int input_vals[3][2] = {
		{0x0c, 0},
		{0x0d, 0},
		{0x0e, 1}
	};

	if (input > 2)
		return -EINVAL;

	FUNC1(1, debug, sd, "input switched to %s\n", inputs[input]);

	FUNC4(sd, 0x33, input_vals[input][0]);

	data = FUNC2(sd, 0xf2) & ~(0x0020);
	if (data < 0)
		return data;
	/* 0x0010 is required to latch the setting */
	FUNC3(sd, 0xf2,
			data | (input_vals[input][1] << 5) | 0x0010);

	FUNC0(10);
	return 0;
}