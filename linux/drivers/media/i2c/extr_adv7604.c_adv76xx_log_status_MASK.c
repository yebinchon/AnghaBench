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
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct v4l2_dv_timings {int dummy; } ;
struct stdi_readback {int /*<<< orphan*/  vs_pol; int /*<<< orphan*/  hs_pol; scalar_t__ interlaced; int /*<<< orphan*/  lcvs; int /*<<< orphan*/  bl; int /*<<< orphan*/  lcf; } ;
struct adv76xx_state {int cec_valid_addrs; char const* const* cec_addr; size_t rgb_quantization_range; struct v4l2_dv_timings timings; scalar_t__ cec_enabled_adap; struct adv76xx_chip_info* info; } ;
struct adv76xx_chip_info {int (* read_cable_det ) (struct v4l2_subdev*) ;int /*<<< orphan*/  cp_csc; int /*<<< orphan*/  edid_status_reg; } ;

/* Variables and functions */
 int ADV76XX_MAX_ADDRS ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC1 (struct v4l2_subdev*,struct v4l2_dv_timings*) ; 
 int FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct v4l2_subdev*,int) ; 
 scalar_t__ FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC7 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC8 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC9 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC10 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC11 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC12 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC13 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC14 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC15 (struct v4l2_subdev*,struct stdi_readback*) ; 
 int FUNC16 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct v4l2_subdev*) ; 
 struct adv76xx_state* FUNC18 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC19 (struct v4l2_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,struct v4l2_dv_timings*,int) ; 

__attribute__((used)) static int FUNC21(struct v4l2_subdev *sd)
{
	struct adv76xx_state *state = FUNC18(sd);
	const struct adv76xx_chip_info *info = state->info;
	struct v4l2_dv_timings timings;
	struct stdi_readback stdi;
	u8 reg_io_0x02 = FUNC5(sd, 0x02);
	u8 edid_enabled;
	u8 cable_det;

	static const char * const csc_coeff_sel_rb[16] = {
		"bypassed", "YPbPr601 -> RGB", "reserved", "YPbPr709 -> RGB",
		"reserved", "RGB -> YPbPr601", "reserved", "RGB -> YPbPr709",
		"reserved", "YPbPr709 -> YPbPr601", "YPbPr601 -> YPbPr709",
		"reserved", "reserved", "reserved", "reserved", "manual"
	};
	static const char * const input_color_space_txt[16] = {
		"RGB limited range (16-235)", "RGB full range (0-255)",
		"YCbCr Bt.601 (16-235)", "YCbCr Bt.709 (16-235)",
		"xvYCC Bt.601", "xvYCC Bt.709",
		"YCbCr Bt.601 (0-255)", "YCbCr Bt.709 (0-255)",
		"invalid", "invalid", "invalid", "invalid", "invalid",
		"invalid", "invalid", "automatic"
	};
	static const char * const hdmi_color_space_txt[16] = {
		"RGB limited range (16-235)", "RGB full range (0-255)",
		"YCbCr Bt.601 (16-235)", "YCbCr Bt.709 (16-235)",
		"xvYCC Bt.601", "xvYCC Bt.709",
		"YCbCr Bt.601 (0-255)", "YCbCr Bt.709 (0-255)",
		"sYCC", "opYCC 601", "opRGB", "invalid", "invalid",
		"invalid", "invalid", "invalid"
	};
	static const char * const rgb_quantization_range_txt[] = {
		"Automatic",
		"RGB limited range (16-235)",
		"RGB full range (0-255)",
	};
	static const char * const deep_color_mode_txt[4] = {
		"8-bits per channel",
		"10-bits per channel",
		"12-bits per channel",
		"16-bits per channel (not supported)"
	};

	FUNC19(sd, "-----Chip status-----\n");
	FUNC19(sd, "Chip power: %s\n", FUNC12(sd) ? "off" : "on");
	edid_enabled = FUNC16(sd, info->edid_status_reg);
	FUNC19(sd, "EDID enabled port A: %s, B: %s, C: %s, D: %s\n",
			((edid_enabled & 0x01) ? "Yes" : "No"),
			((edid_enabled & 0x02) ? "Yes" : "No"),
			((edid_enabled & 0x04) ? "Yes" : "No"),
			((edid_enabled & 0x08) ? "Yes" : "No"));
	FUNC19(sd, "CEC: %s\n", state->cec_enabled_adap ?
			"enabled" : "disabled");
	if (state->cec_enabled_adap) {
		int i;

		for (i = 0; i < ADV76XX_MAX_ADDRS; i++) {
			bool is_valid = state->cec_valid_addrs & (1 << i);

			if (is_valid)
				FUNC19(sd, "CEC Logical Address: 0x%x\n",
					  state->cec_addr[i]);
		}
	}

	FUNC19(sd, "-----Signal status-----\n");
	cable_det = info->read_cable_det(sd);
	FUNC19(sd, "Cable detected (+5V power) port A: %s, B: %s, C: %s, D: %s\n",
			((cable_det & 0x01) ? "Yes" : "No"),
			((cable_det & 0x02) ? "Yes" : "No"),
			((cable_det & 0x04) ? "Yes" : "No"),
			((cable_det & 0x08) ? "Yes" : "No"));
	FUNC19(sd, "TMDS signal detected: %s\n",
			FUNC14(sd) ? "false" : "true");
	FUNC19(sd, "TMDS signal locked: %s\n",
			FUNC11(sd) ? "false" : "true");
	FUNC19(sd, "SSPD locked: %s\n", FUNC9(sd) ? "false" : "true");
	FUNC19(sd, "STDI locked: %s\n", FUNC10(sd) ? "false" : "true");
	FUNC19(sd, "CP locked: %s\n", FUNC8(sd) ? "false" : "true");
	FUNC19(sd, "CP free run: %s\n",
			(FUNC4(sd)) ? "on" : "off");
	FUNC19(sd, "Prim-mode = 0x%x, video std = 0x%x, v_freq = 0x%x\n",
			FUNC5(sd, 0x01) & 0x0f, FUNC5(sd, 0x00) & 0x3f,
			(FUNC5(sd, 0x01) & 0x70) >> 4);

	FUNC19(sd, "-----Video Timings-----\n");
	if (FUNC15(sd, &stdi))
		FUNC19(sd, "STDI: not locked\n");
	else
		FUNC19(sd, "STDI: lcf (frame height - 1) = %d, bl = %d, lcvs (vsync) = %d, %s, %chsync, %cvsync\n",
				stdi.lcf, stdi.bl, stdi.lcvs,
				stdi.interlaced ? "interlaced" : "progressive",
				stdi.hs_pol, stdi.vs_pol);
	if (FUNC1(sd, &timings))
		FUNC19(sd, "No video detected\n");
	else
		FUNC20(sd->name, "Detected format: ",
				      &timings, true);
	FUNC20(sd->name, "Configured format: ",
			      &state->timings, true);

	if (FUNC13(sd))
		return 0;

	FUNC19(sd, "-----Color space-----\n");
	FUNC19(sd, "RGB quantization range ctrl: %s\n",
			rgb_quantization_range_txt[state->rgb_quantization_range]);
	FUNC19(sd, "Input color space: %s\n",
			input_color_space_txt[reg_io_0x02 >> 4]);
	FUNC19(sd, "Output color space: %s %s, alt-gamma %s\n",
			(reg_io_0x02 & 0x02) ? "RGB" : "YCbCr",
			(((reg_io_0x02 >> 2) & 0x01) ^ (reg_io_0x02 & 0x01)) ?
				"(16-235)" : "(0-255)",
			(reg_io_0x02 & 0x08) ? "enabled" : "disabled");
	FUNC19(sd, "Color space conversion: %s\n",
			csc_coeff_sel_rb[FUNC2(sd, info->cp_csc) >> 4]);

	if (!FUNC6(sd))
		return 0;

	FUNC19(sd, "-----%s status-----\n", FUNC7(sd) ? "HDMI" : "DVI-D");
	FUNC19(sd, "Digital video port selected: %c\n",
			(FUNC3(sd, 0x00) & 0x03) + 'A');
	FUNC19(sd, "HDCP encrypted content: %s\n",
			(FUNC3(sd, 0x05) & 0x40) ? "true" : "false");
	FUNC19(sd, "HDCP keys read: %s%s\n",
			(FUNC3(sd, 0x04) & 0x20) ? "yes" : "no",
			(FUNC3(sd, 0x04) & 0x10) ? "ERROR" : "");
	if (FUNC7(sd)) {
		bool audio_pll_locked = FUNC3(sd, 0x04) & 0x01;
		bool audio_sample_packet_detect = FUNC3(sd, 0x18) & 0x01;
		bool audio_mute = FUNC5(sd, 0x65) & 0x40;

		FUNC19(sd, "Audio: pll %s, samples %s, %s\n",
				audio_pll_locked ? "locked" : "not locked",
				audio_sample_packet_detect ? "detected" : "not detected",
				audio_mute ? "muted" : "enabled");
		if (audio_pll_locked && audio_sample_packet_detect) {
			FUNC19(sd, "Audio format: %s\n",
					(FUNC3(sd, 0x07) & 0x20) ? "multi-channel" : "stereo");
		}
		FUNC19(sd, "Audio CTS: %u\n", (FUNC3(sd, 0x5b) << 12) +
				(FUNC3(sd, 0x5c) << 8) +
				(FUNC3(sd, 0x5d) & 0xf0));
		FUNC19(sd, "Audio N: %u\n", ((FUNC3(sd, 0x5d) & 0x0f) << 16) +
				(FUNC3(sd, 0x5e) << 8) +
				FUNC3(sd, 0x5f));
		FUNC19(sd, "AV Mute: %s\n", (FUNC3(sd, 0x04) & 0x40) ? "on" : "off");

		FUNC19(sd, "Deep color mode: %s\n", deep_color_mode_txt[(FUNC3(sd, 0x0b) & 0x60) >> 5]);
		FUNC19(sd, "HDMI colorspace: %s\n", hdmi_color_space_txt[FUNC3(sd, 0x53) & 0xf]);

		FUNC0(sd);
	}

	return 0;
}