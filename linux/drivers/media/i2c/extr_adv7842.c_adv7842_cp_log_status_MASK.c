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
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct v4l2_dv_timings {int dummy; } ;
struct adv7842_state {int cec_valid_addrs; char const* const* cec_addr; size_t rgb_quantization_range; struct v4l2_dv_timings timings; scalar_t__ hdmi_port_a; scalar_t__ cec_enabled_adap; } ;

/* Variables and functions */
 int ADV7842_MAX_ADDRS ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC1 (struct v4l2_subdev*,struct v4l2_dv_timings*) ; 
 int FUNC2 (struct v4l2_subdev*,int) ; 
 int FUNC3 (struct v4l2_subdev*,int) ; 
 int FUNC4 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC6 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC7 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC8 (struct v4l2_subdev*) ; 
 int FUNC9 (struct v4l2_subdev*,int) ; 
 struct adv7842_state* FUNC10 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,struct v4l2_dv_timings*,int) ; 

__attribute__((used)) static int FUNC13(struct v4l2_subdev *sd)
{
	/* CP block */
	struct adv7842_state *state = FUNC10(sd);
	struct v4l2_dv_timings timings;
	u8 reg_io_0x02 = FUNC4(sd, 0x02);
	u8 reg_io_0x21 = FUNC4(sd, 0x21);
	u8 reg_rep_0x77 = FUNC9(sd, 0x77);
	u8 reg_rep_0x7d = FUNC9(sd, 0x7d);
	bool audio_pll_locked = FUNC3(sd, 0x04) & 0x01;
	bool audio_sample_packet_detect = FUNC3(sd, 0x18) & 0x01;
	bool audio_mute = FUNC4(sd, 0x65) & 0x40;

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

	FUNC11(sd, "-----Chip status-----\n");
	FUNC11(sd, "Chip power: %s\n", FUNC8(sd) ? "off" : "on");
	FUNC11(sd, "HDMI/DVI-D port selected: %s\n",
			state->hdmi_port_a ? "A" : "B");
	FUNC11(sd, "EDID A %s, B %s\n",
		  ((reg_rep_0x7d & 0x04) && (reg_rep_0x77 & 0x04)) ?
		  "enabled" : "disabled",
		  ((reg_rep_0x7d & 0x08) && (reg_rep_0x77 & 0x08)) ?
		  "enabled" : "disabled");
	FUNC11(sd, "HPD A %s, B %s\n",
		  reg_io_0x21 & 0x02 ? "enabled" : "disabled",
		  reg_io_0x21 & 0x01 ? "enabled" : "disabled");
	FUNC11(sd, "CEC: %s\n", state->cec_enabled_adap ?
			"enabled" : "disabled");
	if (state->cec_enabled_adap) {
		int i;

		for (i = 0; i < ADV7842_MAX_ADDRS; i++) {
			bool is_valid = state->cec_valid_addrs & (1 << i);

			if (is_valid)
				FUNC11(sd, "CEC Logical Address: 0x%x\n",
					  state->cec_addr[i]);
		}
	}

	FUNC11(sd, "-----Signal status-----\n");
	if (state->hdmi_port_a) {
		FUNC11(sd, "Cable detected (+5V power): %s\n",
			  FUNC4(sd, 0x6f) & 0x02 ? "true" : "false");
		FUNC11(sd, "TMDS signal detected: %s\n",
			  (FUNC4(sd, 0x6a) & 0x02) ? "true" : "false");
		FUNC11(sd, "TMDS signal locked: %s\n",
			  (FUNC4(sd, 0x6a) & 0x20) ? "true" : "false");
	} else {
		FUNC11(sd, "Cable detected (+5V power):%s\n",
			  FUNC4(sd, 0x6f) & 0x01 ? "true" : "false");
		FUNC11(sd, "TMDS signal detected: %s\n",
			  (FUNC4(sd, 0x6a) & 0x01) ? "true" : "false");
		FUNC11(sd, "TMDS signal locked: %s\n",
			  (FUNC4(sd, 0x6a) & 0x10) ? "true" : "false");
	}
	FUNC11(sd, "CP free run: %s\n",
		  (!!(FUNC2(sd, 0xff) & 0x10) ? "on" : "off"));
	FUNC11(sd, "Prim-mode = 0x%x, video std = 0x%x, v_freq = 0x%x\n",
		  FUNC4(sd, 0x01) & 0x0f, FUNC4(sd, 0x00) & 0x3f,
		  (FUNC4(sd, 0x01) & 0x70) >> 4);

	FUNC11(sd, "-----Video Timings-----\n");
	if (FUNC7(sd)) {
		FUNC11(sd, "STDI: not locked\n");
	} else {
		u32 bl = ((FUNC2(sd, 0xb1) & 0x3f) << 8) | FUNC2(sd, 0xb2);
		u32 lcf = ((FUNC2(sd, 0xb3) & 0x7) << 8) | FUNC2(sd, 0xb4);
		u32 lcvs = FUNC2(sd, 0xb3) >> 3;
		u32 fcl = ((FUNC2(sd, 0xb8) & 0x1f) << 8) | FUNC2(sd, 0xb9);
		char hs_pol = ((FUNC2(sd, 0xb5) & 0x10) ?
				((FUNC2(sd, 0xb5) & 0x08) ? '+' : '-') : 'x');
		char vs_pol = ((FUNC2(sd, 0xb5) & 0x40) ?
				((FUNC2(sd, 0xb5) & 0x20) ? '+' : '-') : 'x');
		FUNC11(sd,
			"STDI: lcf (frame height - 1) = %d, bl = %d, lcvs (vsync) = %d, fcl = %d, %s, %chsync, %cvsync\n",
			lcf, bl, lcvs, fcl,
			(FUNC2(sd, 0xb1) & 0x40) ?
				"interlaced" : "progressive",
			hs_pol, vs_pol);
	}
	if (FUNC1(sd, &timings))
		FUNC11(sd, "No video detected\n");
	else
		FUNC12(sd->name, "Detected format: ",
				      &timings, true);
	FUNC12(sd->name, "Configured format: ",
			&state->timings, true);

	if (FUNC7(sd))
		return 0;

	FUNC11(sd, "-----Color space-----\n");
	FUNC11(sd, "RGB quantization range ctrl: %s\n",
		  rgb_quantization_range_txt[state->rgb_quantization_range]);
	FUNC11(sd, "Input color space: %s\n",
		  input_color_space_txt[reg_io_0x02 >> 4]);
	FUNC11(sd, "Output color space: %s %s, alt-gamma %s\n",
		  (reg_io_0x02 & 0x02) ? "RGB" : "YCbCr",
		  (((reg_io_0x02 >> 2) & 0x01) ^ (reg_io_0x02 & 0x01)) ?
			"(16-235)" : "(0-255)",
		  (reg_io_0x02 & 0x08) ? "enabled" : "disabled");
	FUNC11(sd, "Color space conversion: %s\n",
		  csc_coeff_sel_rb[FUNC2(sd, 0xf4) >> 4]);

	if (!FUNC5(sd))
		return 0;

	FUNC11(sd, "-----%s status-----\n", FUNC6(sd) ? "HDMI" : "DVI-D");
	FUNC11(sd, "HDCP encrypted content: %s\n",
			(FUNC3(sd, 0x05) & 0x40) ? "true" : "false");
	FUNC11(sd, "HDCP keys read: %s%s\n",
			(FUNC3(sd, 0x04) & 0x20) ? "yes" : "no",
			(FUNC3(sd, 0x04) & 0x10) ? "ERROR" : "");
	if (!FUNC6(sd))
		return 0;

	FUNC11(sd, "Audio: pll %s, samples %s, %s\n",
			audio_pll_locked ? "locked" : "not locked",
			audio_sample_packet_detect ? "detected" : "not detected",
			audio_mute ? "muted" : "enabled");
	if (audio_pll_locked && audio_sample_packet_detect) {
		FUNC11(sd, "Audio format: %s\n",
			(FUNC3(sd, 0x07) & 0x40) ? "multi-channel" : "stereo");
	}
	FUNC11(sd, "Audio CTS: %u\n", (FUNC3(sd, 0x5b) << 12) +
			(FUNC3(sd, 0x5c) << 8) +
			(FUNC3(sd, 0x5d) & 0xf0));
	FUNC11(sd, "Audio N: %u\n", ((FUNC3(sd, 0x5d) & 0x0f) << 16) +
			(FUNC3(sd, 0x5e) << 8) +
			FUNC3(sd, 0x5f));
	FUNC11(sd, "AV Mute: %s\n",
			(FUNC3(sd, 0x04) & 0x40) ? "on" : "off");
	FUNC11(sd, "Deep color mode: %s\n",
			deep_color_mode_txt[FUNC3(sd, 0x0b) >> 6]);

	FUNC0(sd);

	return 0;
}