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
struct adv7842_platform_data {int alt_gamma; int blank_data; int insert_av_codes; int replicate_av_codes; int dr_str_data; int dr_str_clk; int dr_str_sync; int hdmi_free_run_enable; int hdmi_free_run_mode; int sdp_free_run_force; int sdp_free_run_cbar_en; int sdp_free_run_man_col_en; int sdp_free_run_auto; int ain_sel; int output_bus_lsb_to_msb; int sd_ram_size; int llc_dll_phase; scalar_t__ hpa_auto; int /*<<< orphan*/  vid_std_select; scalar_t__ sd_ram_ddr; int /*<<< orphan*/  sdp_csc_coeff; scalar_t__ disable_cable_det_rst; scalar_t__ disable_pwrdnb; } ;
struct adv7842_state {struct adv7842_platform_data pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adv7842_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct v4l2_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 struct adv7842_state* FUNC17 (struct v4l2_subdev*) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct v4l2_subdev *sd)
{
	struct adv7842_state *state = FUNC17(sd);
	struct adv7842_platform_data *pdata = &state->pdata;
	FUNC7(sd, 0x48,
		   (pdata->disable_pwrdnb ? 0x80 : 0) |
		   (pdata->disable_cable_det_rst ? 0x40 : 0));

	FUNC5(sd);

	/*
	 * Disable I2C access to internal EDID ram from HDMI DDC ports
	 * Disable auto edid enable when leaving powerdown mode
	 */
	FUNC11(sd, 0x77, 0xd3, 0x20);

	/* power */
	FUNC9(sd, 0x0c, 0x42);   /* Power up part and power down VDP */
	FUNC9(sd, 0x15, 0x80);   /* Power up pads */

	/* video format */
	FUNC9(sd, 0x02, 0xf0 | pdata->alt_gamma << 3);
	FUNC10(sd, 0x05, 0xf0, pdata->blank_data << 3 |
			pdata->insert_av_codes << 2 |
			pdata->replicate_av_codes << 1);
	FUNC1(state);

	/* HDMI audio */
	FUNC8(sd, 0x1a, 0xf1, 0x08); /* Wait 1 s before unmute */

	/* Drive strength */
	FUNC10(sd, 0x14, 0xc0,
			pdata->dr_str_data << 4 |
			pdata->dr_str_clk << 2 |
			pdata->dr_str_sync);

	/* HDMI free run */
	FUNC4(sd, 0xba, 0xfc, pdata->hdmi_free_run_enable |
					(pdata->hdmi_free_run_mode << 1));

	/* SPD free run */
	FUNC15(sd, 0xdd, 0xf0, pdata->sdp_free_run_force |
					 (pdata->sdp_free_run_cbar_en << 1) |
					 (pdata->sdp_free_run_man_col_en << 2) |
					 (pdata->sdp_free_run_auto << 3));

	/* TODO from platform data */
	FUNC3(sd, 0x69, 0x14);   /* Enable CP CSC */
	FUNC9(sd, 0x06, 0xa6);   /* positive VS and HS and DE */
	FUNC3(sd, 0xf3, 0xdc); /* Low threshold to enter/exit free run mode */
	FUNC2(sd, 0xb5, 0x01);  /* Setting MCLK to 256Fs */

	FUNC2(sd, 0x02, pdata->ain_sel); /* Select analog input muxing mode */
	FUNC10(sd, 0x30, ~(1 << 4), pdata->output_bus_lsb_to_msb << 4);

	FUNC12(sd, &pdata->sdp_csc_coeff);

	/* todo, improve settings for sdram */
	if (pdata->sd_ram_size >= 128) {
		FUNC14(sd, 0x12, 0x0d); /* Frame TBC,3D comb enabled */
		if (pdata->sd_ram_ddr) {
			/* SDP setup for the AD eval board */
			FUNC13(sd, 0x6f, 0x00); /* DDR mode */
			FUNC13(sd, 0x75, 0x0a); /* 128 MB memory size */
			FUNC13(sd, 0x7a, 0xa5); /* Timing Adjustment */
			FUNC13(sd, 0x7b, 0x8f); /* Timing Adjustment */
			FUNC13(sd, 0x60, 0x01); /* SDRAM reset */
		} else {
			FUNC13(sd, 0x75, 0x0a); /* 64 MB memory size ?*/
			FUNC13(sd, 0x74, 0x00); /* must be zero for sdr sdram */
			FUNC13(sd, 0x79, 0x33); /* CAS latency to 3,
							 depends on memory */
			FUNC13(sd, 0x6f, 0x01); /* SDR mode */
			FUNC13(sd, 0x7a, 0xa5); /* Timing Adjustment */
			FUNC13(sd, 0x7b, 0x8f); /* Timing Adjustment */
			FUNC13(sd, 0x60, 0x01); /* SDRAM reset */
		}
	} else {
		/*
		 * Manual UG-214, rev 0 is bit confusing on this bit
		 * but a '1' disables any signal if the Ram is active.
		 */
		FUNC13(sd, 0x29, 0x10); /* Tristate memory interface */
	}

	FUNC16(sd, pdata->vid_std_select);

	FUNC6(sd);

	if (pdata->hpa_auto) {
		/* HPA auto, HPA 0.5s after Edid set and Cable detect */
		FUNC7(sd, 0x69, 0x5c);
	} else {
		/* HPA manual */
		FUNC7(sd, 0x69, 0xa3);
		/* HPA disable on port A and B */
		FUNC10(sd, 0x20, 0xcf, 0x00);
	}

	/* LLC */
	FUNC9(sd, 0x19, 0x80 | pdata->llc_dll_phase);
	FUNC9(sd, 0x33, 0x40);

	/* interrupts */
	FUNC9(sd, 0x40, 0xf2); /* Configure INT1 */

	FUNC0(sd, true);

	return FUNC18(sd->ctrl_handler);
}