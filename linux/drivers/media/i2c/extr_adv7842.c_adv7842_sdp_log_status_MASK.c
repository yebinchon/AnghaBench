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
 int FUNC0 (struct v4l2_subdev*,int) ; 
 scalar_t__ FUNC1 (struct v4l2_subdev*) ; 
 int FUNC2 (struct v4l2_subdev*,int) ; 
 int FUNC3 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,char*,...) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd)
{
	/* SDP (Standard definition processor) block */
	u8 sdp_signal_detected = FUNC3(sd, 0x5A) & 0x01;

	FUNC4(sd, "Chip powered %s\n", FUNC1(sd) ? "off" : "on");
	FUNC4(sd, "Prim-mode = 0x%x, video std = 0x%x\n",
		  FUNC0(sd, 0x01) & 0x0f, FUNC0(sd, 0x00) & 0x3f);

	FUNC4(sd, "SDP: free run: %s\n",
		(FUNC3(sd, 0x56) & 0x01) ? "on" : "off");
	FUNC4(sd, "SDP: %s\n", sdp_signal_detected ?
		"valid SD/PR signal detected" : "invalid/no signal");
	if (sdp_signal_detected) {
		static const char * const sdp_std_txt[] = {
			"NTSC-M/J",
			"1?",
			"NTSC-443",
			"60HzSECAM",
			"PAL-M",
			"5?",
			"PAL-60",
			"7?", "8?", "9?", "a?", "b?",
			"PAL-CombN",
			"d?",
			"PAL-BGHID",
			"SECAM"
		};
		FUNC4(sd, "SDP: standard %s\n",
			sdp_std_txt[FUNC3(sd, 0x52) & 0x0f]);
		FUNC4(sd, "SDP: %s\n",
			(FUNC3(sd, 0x59) & 0x08) ? "50Hz" : "60Hz");
		FUNC4(sd, "SDP: %s\n",
			(FUNC3(sd, 0x57) & 0x08) ? "Interlaced" : "Progressive");
		FUNC4(sd, "SDP: deinterlacer %s\n",
			(FUNC3(sd, 0x12) & 0x08) ? "enabled" : "disabled");
		FUNC4(sd, "SDP: csc %s mode\n",
			(FUNC2(sd, 0xe0) & 0x40) ? "auto" : "manual");
	}
	return 0;
}