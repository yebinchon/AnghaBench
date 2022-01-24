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
struct workqueue_struct {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int id; int vbi_regs_offset; int /*<<< orphan*/  aud_input; int /*<<< orphan*/  vid_input; int /*<<< orphan*/  fw_wait; int /*<<< orphan*/  fw_work; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
#define  CX23885_AV 130 
#define  CX23887_AV 129 
#define  CX23888_AV 128 
 int CX25840_AUD_INT_CTRL_REG ; 
 int CX25840_AUD_INT_STAT_REG ; 
 int CX25840_VID_INT_STAT_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 struct workqueue_struct* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  cx25840_work_handler ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct cx25840_state*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct workqueue_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cx25840_state* FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC19(struct i2c_client *client)
{
	FUNC0(wait);
	struct cx25840_state *state = FUNC17(FUNC10(client));
	u32 clk_freq = 0;
	struct workqueue_struct *q;

	/* cx23885 sets hostdata to clk_freq pointer */
	if (FUNC18(&state->sd))
		clk_freq = *((u32 *)FUNC18(&state->sd));

	/*
	 * Come out of digital power down
	 * The CX23888, at least, needs this, otherwise registers aside from
	 * 0x0-0x2 can't be read or written.
	 */
	FUNC6(client, 0x000, 0);

	/* Internal Reset */
	FUNC4(client, 0x102, ~0x01, 0x01);
	FUNC4(client, 0x102, ~0x01, 0x00);

	/* Stop microcontroller */
	FUNC4(client, 0x803, ~0x10, 0x00);

	/* DIF in reset? */
	FUNC6(client, 0x398, 0);

	/*
	 * Trust the default xtal, no division
	 * '885: 28.636363... MHz
	 * '887: 25.000000 MHz
	 * '888: 50.000000 MHz
	 */
	FUNC6(client, 0x2, 0x76);

	/* Power up all the PLL's and DLL */
	FUNC6(client, 0x1, 0x40);

	/* Sys PLL */
	switch (state->id) {
	case CX23888_AV:
		/*
		 * 50.0 MHz * (0xb + 0xe8ba26/0x2000000)/4 = 5 * 28.636363 MHz
		 * 572.73 MHz before post divide
		 */
		if (clk_freq == 25000000) {
			/* 888/ImpactVCBe or 25Mhz xtal */
			; /* nothing to do */
		} else {
			/* HVR1850 or 50MHz xtal */
			FUNC6(client, 0x2, 0x71);
		}
		FUNC7(client, 0x11c, 0x01d1744c);
		FUNC7(client, 0x118, 0x00000416);
		FUNC7(client, 0x404, 0x0010253e);
		FUNC7(client, 0x42c, 0x42600000);
		FUNC7(client, 0x44c, 0x161f1000);
		break;
	case CX23887_AV:
		/*
		 * 25.0 MHz * (0x16 + 0x1d1744c/0x2000000)/4 = 5 * 28.636363 MHz
		 * 572.73 MHz before post divide
		 */
		FUNC7(client, 0x11c, 0x01d1744c);
		FUNC7(client, 0x118, 0x00000416);
		break;
	case CX23885_AV:
	default:
		/*
		 * 28.636363 MHz * (0x14 + 0x0/0x2000000)/4 = 5 * 28.636363 MHz
		 * 572.73 MHz before post divide
		 */
		FUNC7(client, 0x11c, 0x00000000);
		FUNC7(client, 0x118, 0x00000414);
		break;
	}

	/* Disable DIF bypass */
	FUNC7(client, 0x33c, 0x00000001);

	/* DIF Src phase inc */
	FUNC7(client, 0x340, 0x0df7df83);

	/*
	 * Vid PLL
	 * Setup for a BT.656 pixel clock of 13.5 Mpixels/second
	 *
	 * 28.636363 MHz * (0xf + 0x02be2c9/0x2000000)/4 = 8 * 13.5 MHz
	 * 432.0 MHz before post divide
	 */

	/* HVR1850 */
	switch (state->id) {
	case CX23888_AV:
		if (clk_freq == 25000000) {
			/* 888/ImpactVCBe or 25MHz xtal */
			FUNC7(client, 0x10c, 0x01b6db7b);
			FUNC7(client, 0x108, 0x00000512);
		} else {
			/* 888/HVR1250 or 50MHz xtal */
			FUNC7(client, 0x10c, 0x13333333);
			FUNC7(client, 0x108, 0x00000515);
		}
		break;
	default:
		FUNC7(client, 0x10c, 0x002be2c9);
		FUNC7(client, 0x108, 0x0000040f);
	}

	/* Luma */
	FUNC7(client, 0x414, 0x00107d12);

	/* Chroma */
	if (FUNC12(state))
		FUNC7(client, 0x418, 0x1d008282);
	else
		FUNC7(client, 0x420, 0x3d008282);

	/*
	 * Aux PLL
	 * Initial setup for audio sample clock:
	 * 48 ksps, 16 bits/sample, x160 multiplier = 122.88 MHz
	 * Initial I2S output/master clock(?):
	 * 48 ksps, 16 bits/sample, x16 multiplier = 12.288 MHz
	 */
	switch (state->id) {
	case CX23888_AV:
		/*
		 * 50.0 MHz * (0x7 + 0x0bedfa4/0x2000000)/3 = 122.88 MHz
		 * 368.64 MHz before post divide
		 * 122.88 MHz / 0xa = 12.288 MHz
		 */
		/* HVR1850 or 50MHz xtal or 25MHz xtal */
		FUNC7(client, 0x114, 0x017dbf48);
		FUNC7(client, 0x110, 0x000a030e);
		break;
	case CX23887_AV:
		/*
		 * 25.0 MHz * (0xe + 0x17dbf48/0x2000000)/3 = 122.88 MHz
		 * 368.64 MHz before post divide
		 * 122.88 MHz / 0xa = 12.288 MHz
		 */
		FUNC7(client, 0x114, 0x017dbf48);
		FUNC7(client, 0x110, 0x000a030e);
		break;
	case CX23885_AV:
	default:
		/*
		 * 28.636363 MHz * (0xc + 0x1bf0c9e/0x2000000)/3 = 122.88 MHz
		 * 368.64 MHz before post divide
		 * 122.88 MHz / 0xa = 12.288 MHz
		 */
		FUNC7(client, 0x114, 0x01bf0c9e);
		FUNC7(client, 0x110, 0x000a030c);
		break;
	}

	/* ADC2 input select */
	FUNC6(client, 0x102, 0x10);

	/* VIN1 & VIN5 */
	FUNC6(client, 0x103, 0x11);

	/* Enable format auto detect */
	FUNC6(client, 0x400, 0);
	/* Fast subchroma lock */
	/* White crush, Chroma AGC & Chroma Killer enabled */
	FUNC6(client, 0x401, 0xe8);

	/* Select AFE clock pad output source */
	FUNC6(client, 0x144, 0x05);

	/* Drive GPIO2 direction and values for HVR1700
	 * where an onboard mux selects the output of demodulator
	 * vs the 417. Failure to set this results in no DTV.
	 * It's safe to set this across all Hauppauge boards
	 * currently, regardless of the board type.
	 */
	FUNC6(client, 0x160, 0x1d);
	FUNC6(client, 0x164, 0x00);

	/*
	 * Do the firmware load in a work handler to prevent.
	 * Otherwise the kernel is blocked waiting for the
	 * bit-banging i2c interface to finish uploading the
	 * firmware.
	 */
	FUNC1(&state->fw_work, cx25840_work_handler);
	FUNC11(&state->fw_wait);
	q = FUNC2("cx25840_fw");
	if (q) {
		FUNC13(&state->fw_wait, &wait, TASK_UNINTERRUPTIBLE);
		FUNC14(q, &state->fw_work);
		FUNC15();
		FUNC9(&state->fw_wait, &wait);
		FUNC8(q);
	}

	/*
	 * Call the cx23888 specific std setup func, we no longer rely on
	 * the generic cx24840 func.
	 */
	if (FUNC12(state))
		FUNC3(client);
	else
		FUNC5(client);

	/* (re)set input */
	FUNC16(client, state->vid_input, state->aud_input);

	/* start microcontroller */
	FUNC4(client, 0x803, ~0x10, 0x10);

	/* Disable and clear video interrupts - we don't use them */
	FUNC7(client, CX25840_VID_INT_STAT_REG, 0xffffffff);

	/* Disable and clear audio interrupts - we don't use them */
	FUNC6(client, CX25840_AUD_INT_CTRL_REG, 0xff);
	FUNC6(client, CX25840_AUD_INT_STAT_REG, 0xff);

	/* CC raw enable */

	/*
	 *  - VIP 1.1 control codes - 10bit, blue field enable.
	 *  - enable raw data during vertical blanking.
	 *  - enable ancillary Data insertion for 656 or VIP.
	 */
	FUNC7(client, 0x404, 0x0010253e);

	/* CC on  - Undocumented Register */
	FUNC6(client, state->vbi_regs_offset + 0x42f, 0x66);

	/* HVR-1250 / HVR1850 DIF related */
	/* Power everything up */
	FUNC7(client, 0x130, 0x0);

	/* Undocumented */
	if (FUNC12(state))
		FUNC7(client, 0x454, 0x6628021F);
	else
		FUNC7(client, 0x478, 0x6628021F);

	/* AFE_CLK_OUT_CTRL - Select the clock output source as output */
	FUNC7(client, 0x144, 0x5);

	/* I2C_OUT_CTL - I2S output configuration as
	 * Master, Sony, Left justified, left sample on WS=1
	 */
	FUNC7(client, 0x918, 0x1a0);

	/* AFE_DIAG_CTRL1 */
	FUNC7(client, 0x134, 0x000a1800);

	/* AFE_DIAG_CTRL3 - Inverted Polarity for Audio and Video */
	FUNC7(client, 0x13c, 0x00310000);
}