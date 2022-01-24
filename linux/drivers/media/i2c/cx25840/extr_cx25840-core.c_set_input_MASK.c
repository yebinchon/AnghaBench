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
typedef  int u32 ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int vbi_regs_offset; int vid_input; int aud_input; } ;
typedef  enum cx25840_video_input { ____Placeholder_cx25840_video_input } cx25840_video_input ;
typedef  enum cx25840_audio_input { ____Placeholder_cx25840_audio_input } cx25840_audio_input ;

/* Variables and functions */
 int AFE_CTRL ; 
#define  CX25840_AUDIO4 133 
#define  CX25840_AUDIO5 132 
#define  CX25840_AUDIO6 131 
#define  CX25840_AUDIO7 130 
#define  CX25840_AUDIO8 129 
#define  CX25840_AUDIO_SERIAL 128 
 int CX25840_COMPONENT_ON ; 
 int CX25840_COMPOSITE1 ; 
 int CX25840_COMPOSITE8 ; 
 int CX25840_DIF_ON ; 
 int CX25840_SVIDEO_CHROMA4 ; 
 int CX25840_SVIDEO_CHROMA7 ; 
 int CX25840_SVIDEO_CHROMA8 ; 
 int CX25840_SVIDEO_LUMA1 ; 
 int CX25840_SVIDEO_LUMA8 ; 
 int CX25840_SVIDEO_ON ; 
 int CX25840_VIN1_CH1 ; 
 int EINVAL ; 
 int MODE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  cx25840_debug ; 
 int FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*) ; 
 scalar_t__ FUNC7 (struct cx25840_state*) ; 
 scalar_t__ FUNC8 (struct cx25840_state*) ; 
 scalar_t__ FUNC9 (struct cx25840_state*) ; 
 struct cx25840_state* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,char*,int) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
		     enum cx25840_video_input vid_input,
		     enum cx25840_audio_input aud_input)
{
	struct cx25840_state *state = FUNC10(FUNC5(client));
	u8 is_composite = (vid_input >= CX25840_COMPOSITE1 &&
			   vid_input <= CX25840_COMPOSITE8);
	u8 is_component = (vid_input & CX25840_COMPONENT_ON) ==
			CX25840_COMPONENT_ON;
	u8 is_dif = (vid_input & CX25840_DIF_ON) ==
			CX25840_DIF_ON;
	u8 is_svideo = (vid_input & CX25840_SVIDEO_ON) ==
			CX25840_SVIDEO_ON;
	int luma = vid_input & 0xf0;
	int chroma = vid_input & 0xf00;
	u8 reg;
	u32 val;

	FUNC11(1, cx25840_debug, client,
		"decoder set video input %d, audio input %d\n",
		vid_input, aud_input);

	if (vid_input >= CX25840_VIN1_CH1) {
		FUNC11(1, cx25840_debug, client, "vid_input 0x%x\n",
			vid_input);
		reg = vid_input & 0xff;
		is_composite = !is_component &&
			       ((vid_input & CX25840_SVIDEO_ON) != CX25840_SVIDEO_ON);

		FUNC11(1, cx25840_debug, client, "mux cfg 0x%x comp=%d\n",
			reg, is_composite);
	} else if (is_composite) {
		reg = 0xf0 + (vid_input - CX25840_COMPOSITE1);
	} else {
		if ((vid_input & ~0xff0) ||
		    luma < CX25840_SVIDEO_LUMA1 ||
		    luma > CX25840_SVIDEO_LUMA8 ||
		    chroma < CX25840_SVIDEO_CHROMA4 ||
		    chroma > CX25840_SVIDEO_CHROMA8) {
			FUNC12(client, "0x%04x is not a valid video input!\n",
				vid_input);
			return -EINVAL;
		}
		reg = 0xf0 + ((luma - CX25840_SVIDEO_LUMA1) >> 4);
		if (chroma >= CX25840_SVIDEO_CHROMA7) {
			reg &= 0x3f;
			reg |= (chroma - CX25840_SVIDEO_CHROMA7) >> 2;
		} else {
			reg &= 0xcf;
			reg |= (chroma - CX25840_SVIDEO_CHROMA4) >> 4;
		}
	}

	/* The caller has previously prepared the correct routing
	 * configuration in reg (for the cx23885) so we have no
	 * need to attempt to flip bits for earlier av decoders.
	 */
	if (!FUNC9(state) && !FUNC7(state)) {
		switch (aud_input) {
		case CX25840_AUDIO_SERIAL:
			/* do nothing, use serial audio input */
			break;
		case CX25840_AUDIO4:
			reg &= ~0x30;
			break;
		case CX25840_AUDIO5:
			reg &= ~0x30;
			reg |= 0x10;
			break;
		case CX25840_AUDIO6:
			reg &= ~0x30;
			reg |= 0x20;
			break;
		case CX25840_AUDIO7:
			reg &= ~0xc0;
			break;
		case CX25840_AUDIO8:
			reg &= ~0xc0;
			reg |= 0x40;
			break;
		default:
			FUNC12(client, "0x%04x is not a valid audio input!\n",
				aud_input);
			return -EINVAL;
		}
	}

	FUNC3(client, 0x103, reg);

	/* Set INPUT_MODE to Composite, S-Video or Component */
	if (is_component)
		FUNC0(client, 0x401, ~0x6, 0x6);
	else
		FUNC0(client, 0x401, ~0x6, is_composite ? 0 : 0x02);

	if (FUNC9(state)) {
		/* Enable or disable the DIF for tuner use */
		if (is_dif) {
			FUNC0(client, 0x102, ~0x80, 0x80);

			/* Set of defaults for NTSC and PAL */
			FUNC4(client, 0x31c, 0xc2262600);
			FUNC4(client, 0x320, 0xc2262600);

			/* 18271 IF - Nobody else yet uses a different
			 * tuner with the DIF, so these are reasonable
			 * assumptions (HVR1250 and HVR1850 specific).
			 */
			FUNC4(client, 0x318, 0xda262600);
			FUNC4(client, 0x33c, 0x2a24c800);
			FUNC4(client, 0x104, 0x0704dd00);
		} else {
			FUNC4(client, 0x300, 0x015c28f5);

			FUNC0(client, 0x102, ~0x80, 0);
			FUNC4(client, 0x340, 0xdf7df83);
			FUNC4(client, 0x104, 0x0704dd80);
			FUNC4(client, 0x314, 0x22400600);
			FUNC4(client, 0x318, 0x40002600);
			FUNC4(client, 0x324, 0x40002600);
			FUNC4(client, 0x32c, 0x0250e620);
			FUNC4(client, 0x39c, 0x01FF0B00);

			FUNC4(client, 0x410, 0xffff0dbf);
			FUNC4(client, 0x414, 0x00137d03);

			FUNC4(client, state->vbi_regs_offset + 0x42c,
				       0x42600000);
			FUNC4(client, state->vbi_regs_offset + 0x430,
				       0x0000039b);
			FUNC4(client, state->vbi_regs_offset + 0x438,
				       0x00000000);

			FUNC4(client, state->vbi_regs_offset + 0x440,
				       0xF8E3E824);
			FUNC4(client, state->vbi_regs_offset + 0x444,
				       0x401040dc);
			FUNC4(client, state->vbi_regs_offset + 0x448,
				       0xcd3f02a0);
			FUNC4(client, state->vbi_regs_offset + 0x44c,
				       0x161f1000);
			FUNC4(client, state->vbi_regs_offset + 0x450,
				       0x00000802);

			FUNC4(client, 0x91c, 0x01000000);
			FUNC4(client, 0x8e0, 0x03063870);
			FUNC4(client, 0x8d4, 0x7FFF0024);
			FUNC4(client, 0x8d0, 0x00063073);

			FUNC4(client, 0x8c8, 0x00010000);
			FUNC4(client, 0x8cc, 0x00080023);

			/* DIF BYPASS */
			FUNC4(client, 0x33c, 0x2a04c800);
		}

		/* Reset the DIF */
		FUNC4(client, 0x398, 0);
	}

	if (!FUNC9(state) && !FUNC7(state)) {
		/* Set CH_SEL_ADC2 to 1 if input comes from CH3 */
		FUNC0(client, 0x102, ~0x2, (reg & 0x80) == 0 ? 2 : 0);
		/* Set DUAL_MODE_ADC2 to 1 if input comes from both CH2&CH3 */
		if ((reg & 0xc0) != 0xc0 && (reg & 0x30) != 0x30)
			FUNC0(client, 0x102, ~0x4, 4);
		else
			FUNC0(client, 0x102, ~0x4, 0);
	} else {
		/* Set DUAL_MODE_ADC2 to 1 if component*/
		FUNC0(client, 0x102, ~0x4, is_component ? 0x4 : 0x0);
		if (is_composite) {
			/* ADC2 input select channel 2 */
			FUNC0(client, 0x102, ~0x2, 0);
		} else if (!is_component) {
			/* S-Video */
			if (chroma >= CX25840_SVIDEO_CHROMA7) {
				/* ADC2 input select channel 3 */
				FUNC0(client, 0x102, ~0x2, 2);
			} else {
				/* ADC2 input select channel 2 */
				FUNC0(client, 0x102, ~0x2, 0);
			}
		}

		/* cx23885 / SVIDEO */
		if (FUNC9(state) && is_svideo) {
#define AFE_CTRL  (0x104)
#define MODE_CTRL (0x400)
			FUNC0(client, 0x102, ~0x2, 0x2);

			val = FUNC2(client, MODE_CTRL);
			val &= 0xFFFFF9FF;

			/* YC */
			val |= 0x00000200;
			val &= ~0x2000;
			FUNC4(client, MODE_CTRL, val);

			val = FUNC2(client, AFE_CTRL);

			/* Chroma in select */
			val |= 0x00001000;
			val &= 0xfffffe7f;
			/* Clear VGA_SEL_CH2 and VGA_SEL_CH3 (bits 7 and 8).
			 * This sets them to use video rather than audio.
			 * Only one of the two will be in use.
			 */
			FUNC4(client, AFE_CTRL, val);
		} else {
			FUNC0(client, 0x102, ~0x2, 0);
		}
	}

	state->vid_input = vid_input;
	state->aud_input = aud_input;
	FUNC1(client);
	FUNC6(client);

	if (FUNC9(state)) {
		/* Audio channel 1 src : Parallel 1 */
		FUNC3(client, 0x124, 0x03);

		/* Select AFE clock pad output source */
		FUNC3(client, 0x144, 0x05);

		/* I2S_IN_CTL: I2S_IN_SONY_MODE, LEFT SAMPLE on WS=1 */
		FUNC3(client, 0x914, 0xa0);

		/* I2S_OUT_CTL:
		 * I2S_IN_SONY_MODE, LEFT SAMPLE on WS=1
		 * I2S_OUT_MASTER_MODE = Master
		 */
		FUNC3(client, 0x918, 0xa0);
		FUNC3(client, 0x919, 0x01);
	} else if (FUNC7(state)) {
		/* Audio channel 1 src : Parallel 1 */
		FUNC3(client, 0x124, 0x03);

		/* I2S_IN_CTL: I2S_IN_SONY_MODE, LEFT SAMPLE on WS=1 */
		FUNC3(client, 0x914, 0xa0);

		/* I2S_OUT_CTL:
		 * I2S_IN_SONY_MODE, LEFT SAMPLE on WS=1
		 * I2S_OUT_MASTER_MODE = Master
		 */
		FUNC3(client, 0x918, 0xa0);
		FUNC3(client, 0x919, 0x01);
	}

	if (FUNC9(state) &&
	    ((aud_input == CX25840_AUDIO7) || (aud_input == CX25840_AUDIO6))) {
		/* Configure audio from LR1 or LR2 input */
		FUNC4(client, 0x910, 0);
		FUNC4(client, 0x8d0, 0x63073);
	} else if (FUNC9(state) && (aud_input == CX25840_AUDIO8)) {
		/* Configure audio from tuner/sif input */
		FUNC4(client, 0x910, 0x12b000c9);
		FUNC4(client, 0x8d0, 0x1f063870);
	}

	if (FUNC8(state)) {
		/*
		 * HVR1850
		 *
		 * AUD_IO_CTRL - I2S Input, Parallel1
		 *  - Channel 1 src - Parallel1 (Merlin out)
		 *  - Channel 2 src - Parallel2 (Merlin out)
		 *  - Channel 3 src - Parallel3 (Merlin AC97 out)
		 *  - I2S source and dir - Merlin, output
		 */
		FUNC4(client, 0x124, 0x100);

		if (!is_dif) {
			/*
			 * Stop microcontroller if we don't need it
			 * to avoid audio popping on svideo/composite use.
			 */
			FUNC0(client, 0x803, ~0x10, 0x00);
		}
	}

	return 0;
}