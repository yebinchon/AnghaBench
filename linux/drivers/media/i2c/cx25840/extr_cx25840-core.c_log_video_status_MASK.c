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
struct cx25840_state {int vid_input; int audclk_freq; } ;

/* Variables and functions */
 int CX25840_COMPOSITE1 ; 
 int CX25840_COMPOSITE8 ; 
 int FUNC0 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 struct cx25840_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,char*,...) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	static const char *const fmt_strs[] = {
		"0x0",
		"NTSC-M", "NTSC-J", "NTSC-4.43",
		"PAL-BDGHI", "PAL-M", "PAL-N", "PAL-Nc", "PAL-60",
		"0x9", "0xA", "0xB",
		"SECAM",
		"0xD", "0xE", "0xF"
	};

	struct cx25840_state *state = FUNC2(FUNC1(client));
	u8 vidfmt_sel = FUNC0(client, 0x400) & 0xf;
	u8 gen_stat1 = FUNC0(client, 0x40d);
	u8 gen_stat2 = FUNC0(client, 0x40e);
	int vid_input = state->vid_input;

	FUNC3(client, "Video signal:              %spresent\n",
		 (gen_stat2 & 0x20) ? "" : "not ");
	FUNC3(client, "Detected format:           %s\n",
		 fmt_strs[gen_stat1 & 0xf]);

	FUNC3(client, "Specified standard:        %s\n",
		 vidfmt_sel ? fmt_strs[vidfmt_sel] : "automatic detection");

	if (vid_input >= CX25840_COMPOSITE1 &&
	    vid_input <= CX25840_COMPOSITE8) {
		FUNC3(client, "Specified video input:     Composite %d\n",
			 vid_input - CX25840_COMPOSITE1 + 1);
	} else {
		FUNC3(client,
			 "Specified video input:     S-Video (Luma In%d, Chroma In%d)\n",
			 (vid_input & 0xf0) >> 4, (vid_input & 0xf00) >> 8);
	}

	FUNC3(client, "Specified audioclock freq: %d Hz\n",
		 state->audclk_freq);
}