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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd)
{
	/*
	 * From ADV784x external Memory test.pdf
	 *
	 * Reset must just been performed before running test.
	 * Recommended to reset after test.
	 */
	int i;
	int pass = 0;
	int fail = 0;
	int complete = 0;

	FUNC1(sd, 0x00, 0x01);  /* Program SDP 4x1 */
	FUNC1(sd, 0x01, 0x00);  /* Program SDP mode */
	FUNC0(sd, 0x80, 0x92); /* SDP Recommended Write */
	FUNC0(sd, 0x9B, 0x01); /* SDP Recommended Write ADV7844ES1 */
	FUNC0(sd, 0x9C, 0x60); /* SDP Recommended Write ADV7844ES1 */
	FUNC0(sd, 0x9E, 0x02); /* SDP Recommended Write ADV7844ES1 */
	FUNC0(sd, 0xA0, 0x0B); /* SDP Recommended Write ADV7844ES1 */
	FUNC0(sd, 0xC3, 0x02); /* Memory BIST Initialisation */
	FUNC1(sd, 0x0C, 0x40);  /* Power up ADV7844 */
	FUNC1(sd, 0x15, 0xBA);  /* Enable outputs */
	FUNC5(sd, 0x12, 0x00); /* Disable 3D comb, Frame TBC & 3DNR */
	FUNC1(sd, 0xFF, 0x04);  /* Reset memory controller */

	FUNC6(5000, 6000);

	FUNC5(sd, 0x12, 0x00);    /* Disable 3D Comb, Frame TBC & 3DNR */
	FUNC4(sd, 0x2A, 0x01); /* Memory BIST Initialisation */
	FUNC4(sd, 0x7c, 0x19); /* Memory BIST Initialisation */
	FUNC4(sd, 0x80, 0x87); /* Memory BIST Initialisation */
	FUNC4(sd, 0x81, 0x4a); /* Memory BIST Initialisation */
	FUNC4(sd, 0x82, 0x2c); /* Memory BIST Initialisation */
	FUNC4(sd, 0x83, 0x0e); /* Memory BIST Initialisation */
	FUNC4(sd, 0x84, 0x94); /* Memory BIST Initialisation */
	FUNC4(sd, 0x85, 0x62); /* Memory BIST Initialisation */
	FUNC4(sd, 0x7d, 0x00); /* Memory BIST Initialisation */
	FUNC4(sd, 0x7e, 0x1a); /* Memory BIST Initialisation */

	FUNC6(5000, 6000);

	FUNC4(sd, 0xd9, 0xd5); /* Enable BIST Test */
	FUNC5(sd, 0x12, 0x05); /* Enable FRAME TBC & 3D COMB */

	FUNC2(20);

	for (i = 0; i < 10; i++) {
		u8 result = FUNC3(sd, 0xdb);
		if (result & 0x10) {
			complete++;
			if (result & 0x20)
				fail++;
			else
				pass++;
		}
		FUNC2(20);
	}

	FUNC7(1, debug, sd,
		"Ram Test: completed %d of %d: pass %d, fail %d\n",
		complete, i, pass, fail);

	if (!complete || fail)
		return -EIO;
	return 0;
}