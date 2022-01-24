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
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; } ;
struct adv76xx_platform_data {scalar_t__ default_input; int alt_gamma; int blank_data; int insert_av_codes; int replicate_av_codes; int inv_vs_pol; int inv_hs_pol; int inv_llc_pol; int dr_str_data; int dr_str_clk; int dr_str_sync; int hdmi_free_run_mode; int ain_sel; int output_bus_lsb_to_msb; int int1_config; scalar_t__ disable_cable_det_rst; scalar_t__ disable_pwrdnb; } ;
struct adv76xx_state {scalar_t__ source_pad; scalar_t__ selected_input; struct adv76xx_platform_data pdata; struct adv76xx_chip_info* info; } ;
struct adv76xx_chip_info {int fmt_change_digital_mask; int cable_det_mask; int /*<<< orphan*/  (* setup_irqs ) (struct v4l2_subdev*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct adv76xx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct adv76xx_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_subdev*) ; 
 struct adv76xx_state* FUNC12 (struct v4l2_subdev*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct v4l2_subdev *sd)
{
	struct adv76xx_state *state = FUNC12(sd);
	const struct adv76xx_chip_info *info = state->info;
	struct adv76xx_platform_data *pdata = &state->pdata;

	FUNC6(sd, 0x48,
		(pdata->disable_pwrdnb ? 0x80 : 0) |
		(pdata->disable_cable_det_rst ? 0x40 : 0));

	FUNC4(sd);

	if (pdata->default_input >= 0 &&
	    pdata->default_input < state->source_pad) {
		state->selected_input = pdata->default_input;
		FUNC10(sd);
		FUNC5(sd);
	}

	/* power */
	FUNC8(sd, 0x0c, 0x42);   /* Power up part and power down VDP */
	FUNC8(sd, 0x0b, 0x44);   /* Power down ESDP block */
	FUNC3(sd, 0xcf, 0x01);   /* Power down macrovision */

	/* video format */
	FUNC9(sd, 0x02, 0x0f, pdata->alt_gamma << 3);
	FUNC9(sd, 0x05, 0x0e, pdata->blank_data << 3 |
			pdata->insert_av_codes << 2 |
			pdata->replicate_av_codes << 1);
	FUNC1(state);

	FUNC3(sd, 0x69, 0x30);   /* Enable CP CSC */

	/* VS, HS polarities */
	FUNC8(sd, 0x06, 0xa0 | pdata->inv_vs_pol << 2 |
		 pdata->inv_hs_pol << 1 | pdata->inv_llc_pol);

	/* Adjust drive strength */
	FUNC8(sd, 0x14, 0x40 | pdata->dr_str_data << 4 |
				pdata->dr_str_clk << 2 |
				pdata->dr_str_sync);

	FUNC3(sd, 0xba, (pdata->hdmi_free_run_mode << 1) | 0x01); /* HDMI free run */
	FUNC3(sd, 0xf3, 0xdc); /* Low threshold to enter/exit free run mode */
	FUNC3(sd, 0xf9, 0x23); /*  STDI ch. 1 - LCVS change threshold -
				      ADI recommended setting [REF_01, c. 2.3.3] */
	FUNC3(sd, 0x45, 0x23); /*  STDI ch. 2 - LCVS change threshold -
				      ADI recommended setting [REF_01, c. 2.3.3] */
	FUNC3(sd, 0xc9, 0x2d); /* use prim_mode and vid_std as free run resolution
				     for digital formats */

	/* HDMI audio */
	FUNC7(sd, 0x15, 0x03, 0x03); /* Mute on FIFO over-/underflow [REF_01, c. 1.2.18] */
	FUNC7(sd, 0x1a, 0x0e, 0x08); /* Wait 1 s before unmute */
	FUNC7(sd, 0x68, 0x06, 0x06); /* FIFO reset on over-/underflow [REF_01, c. 1.2.19] */

	/* TODO from platform data */
	FUNC2(sd, 0xb5, 0x01);  /* Setting MCLK to 256Fs */

	if (FUNC0(state)) {
		FUNC2(sd, 0x02, pdata->ain_sel); /* Select analog input muxing mode */
		FUNC9(sd, 0x30, 1 << 4, pdata->output_bus_lsb_to_msb << 4);
	}

	/* interrupts */
	FUNC8(sd, 0x40, 0xc0 | pdata->int1_config); /* Configure INT1 */
	FUNC8(sd, 0x46, 0x98); /* Enable SSPD, STDI and CP unlocked interrupts */
	FUNC8(sd, 0x6e, info->fmt_change_digital_mask); /* Enable V_LOCKED and DE_REGEN_LCK interrupts */
	FUNC8(sd, 0x73, info->cable_det_mask); /* Enable cable detection (+5v) interrupts */
	info->setup_irqs(sd);

	return FUNC13(sd->ctrl_handler);
}