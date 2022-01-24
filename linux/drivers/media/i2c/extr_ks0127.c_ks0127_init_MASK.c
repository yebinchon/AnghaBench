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
typedef  int /*<<< orphan*/  u8 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_CMDE ; 
 int /*<<< orphan*/  KS_STAT ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * reg_defaults ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 

__attribute__((used)) static void FUNC4(struct v4l2_subdev *sd)
{
	u8 *table = reg_defaults;
	int i;

	FUNC3(1, debug, sd, "reset\n");
	FUNC2(1);

	/* initialize all registers to known values */
	/* (except STAT, 0x21, 0x22, TEST and 0x38,0x39) */

	for (i = 1; i < 33; i++)
		FUNC1(sd, i, table[i]);

	for (i = 35; i < 40; i++)
		FUNC1(sd, i, table[i]);

	for (i = 41; i < 56; i++)
		FUNC1(sd, i, table[i]);

	for (i = 58; i < 64; i++)
		FUNC1(sd, i, table[i]);


	if ((FUNC0(sd, KS_STAT) & 0x80) == 0) {
		FUNC3(1, debug, sd, "ks0122s found\n");
		return;
	}

	switch (FUNC0(sd, KS_CMDE) & 0x0f) {
	case 0:
		FUNC3(1, debug, sd, "ks0127 found\n");
		break;

	case 9:
		FUNC3(1, debug, sd, "ks0127B Revision A found\n");
		break;

	default:
		FUNC3(1, debug, sd, "unknown revision\n");
		break;
	}
}