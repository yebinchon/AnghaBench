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
struct i2c_client {int dummy; } ;
struct cx25840_state {int std; } ;

/* Variables and functions */
 int V4L2_STD_NTSC ; 
 int V4L2_STD_NTSC_443 ; 
 int V4L2_STD_NTSC_M_JP ; 
 int V4L2_STD_PAL ; 
 int V4L2_STD_PAL_60 ; 
 int V4L2_STD_PAL_M ; 
 int V4L2_STD_PAL_N ; 
 int V4L2_STD_PAL_Nc ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int,int) ; 
 int /*<<< orphan*/  cx25840_debug ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 scalar_t__ FUNC5 (struct cx25840_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx25840_state*) ; 
 struct cx25840_state* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct cx25840_state *state = FUNC7(FUNC3(client));
	u8 fmt = 0;	/* zero is autodetect */
	u8 pal_m = 0;

	/* First tests should be against specific std */
	if (state->std == V4L2_STD_NTSC_M_JP) {
		fmt = 0x2;
	} else if (state->std == V4L2_STD_NTSC_443) {
		fmt = 0x3;
	} else if (state->std == V4L2_STD_PAL_M) {
		pal_m = 1;
		fmt = 0x5;
	} else if (state->std == V4L2_STD_PAL_N) {
		fmt = 0x6;
	} else if (state->std == V4L2_STD_PAL_Nc) {
		fmt = 0x7;
	} else if (state->std == V4L2_STD_PAL_60) {
		fmt = 0x8;
	} else {
		/* Then, test against generic ones */
		if (state->std & V4L2_STD_NTSC)
			fmt = 0x1;
		else if (state->std & V4L2_STD_PAL)
			fmt = 0x4;
		else if (state->std & V4L2_STD_SECAM)
			fmt = 0xc;
	}

	FUNC8(1, cx25840_debug, client,
		"changing video std to fmt %i\n", fmt);

	/*
	 * Follow step 9 of section 3.16 in the cx25840 datasheet.
	 * Without this PAL may display a vertical ghosting effect.
	 * This happens for example with the Yuan MPC622.
	 */
	if (fmt >= 4 && fmt < 8) {
		/* Set format to NTSC-M */
		FUNC1(client, 0x400, ~0xf, 1);
		/* Turn off LCOMB */
		FUNC1(client, 0x47b, ~6, 0);
	}
	FUNC1(client, 0x400, ~0xf, fmt);
	FUNC1(client, 0x403, ~0x3, pal_m);
	if (FUNC5(state))
		FUNC0(client);
	else
		FUNC2(client);
	if (!FUNC6(state))
		FUNC4(client);
	return 0;
}