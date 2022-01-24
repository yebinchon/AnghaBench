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
struct workqueue_struct {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {scalar_t__ generic_mode; int /*<<< orphan*/  aud_input; int /*<<< orphan*/  vid_input; int /*<<< orphan*/  fw_wait; int /*<<< orphan*/  fw_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 struct workqueue_struct* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  cx25840_work_handler ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct workqueue_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cx25840_state* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC18(struct i2c_client *client)
{
	FUNC0(wait);
	struct cx25840_state *state = FUNC17(FUNC9(client));
	struct workqueue_struct *q;

	/* datasheet startup in numbered steps, refer to page 3-77 */
	/* 2. */
	FUNC3(client, 0x803, ~0x10, 0x00);
	/*
	 * The default of this register should be 4, but I get 0 instead.
	 * Set this register to 4 manually.
	 */
	FUNC6(client, 0x000, 0x04);
	/* 3. */
	FUNC10(client);
	FUNC11(client);
	FUNC6(client, 0x136, 0x0a);
	/* 4. */
	FUNC6(client, 0x13c, 0x01);
	FUNC6(client, 0x13c, 0x00);
	/* 5. */
	/*
	 * Do the firmware load in a work handler to prevent.
	 * Otherwise the kernel is blocked waiting for the
	 * bit-banging i2c interface to finish uploading the
	 * firmware.
	 */
	FUNC1(&state->fw_work, cx25840_work_handler);
	FUNC12(&state->fw_wait);
	q = FUNC2("cx25840_fw");
	if (q) {
		FUNC13(&state->fw_wait, &wait, TASK_UNINTERRUPTIBLE);
		FUNC14(q, &state->fw_work);
		FUNC15();
		FUNC8(&state->fw_wait, &wait);
		FUNC7(q);
	}

	/* 6. */
	FUNC6(client, 0x115, 0x8c);
	FUNC6(client, 0x116, 0x07);
	FUNC6(client, 0x118, 0x02);
	/* 7. */
	FUNC6(client, 0x4a5, 0x80);
	FUNC6(client, 0x4a5, 0x00);
	FUNC6(client, 0x402, 0x00);
	/* 8. */
	FUNC3(client, 0x401, ~0x18, 0);
	FUNC3(client, 0x4a2, ~0x10, 0x10);
	/* steps 8c and 8d are done in change_input() */
	/* 10. */
	FUNC6(client, 0x8d3, 0x1f);
	FUNC6(client, 0x8e3, 0x03);

	FUNC4(client);

	/* trial and error says these are needed to get audio */
	FUNC6(client, 0x914, 0xa0);
	FUNC6(client, 0x918, 0xa0);
	FUNC6(client, 0x919, 0x01);

	/* stereo preferred */
	FUNC6(client, 0x809, 0x04);
	/* AC97 shift */
	FUNC6(client, 0x8cf, 0x0f);

	/* (re)set input */
	FUNC16(client, state->vid_input, state->aud_input);

	if (state->generic_mode)
		FUNC5(client);

	/* start microcontroller */
	FUNC3(client, 0x803, ~0x10, 0x10);
}