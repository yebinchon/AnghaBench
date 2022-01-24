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
typedef  int uint8_t ;
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct ths8200_state {int /*<<< orphan*/  dv_timings; int /*<<< orphan*/  chip_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  THS8200_CHIP_CTL ; 
 int /*<<< orphan*/  THS8200_DTG2_LINE_CNT_LSB ; 
 int /*<<< orphan*/  THS8200_DTG2_LINE_CNT_MSB ; 
 int /*<<< orphan*/  THS8200_DTG2_PIXEL_CNT_LSB ; 
 int /*<<< orphan*/  THS8200_DTG2_PIXEL_CNT_MSB ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 struct ths8200_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd)
{
	struct ths8200_state *state = FUNC1(sd);
	uint8_t reg_03 = FUNC0(sd, THS8200_CHIP_CTL);

	FUNC2(sd, "----- Chip status -----\n");
	FUNC2(sd, "version: %u\n", state->chip_version);
	FUNC2(sd, "power: %s\n", (reg_03 & 0x0c) ? "off" : "on");
	FUNC2(sd, "reset: %s\n", (reg_03 & 0x01) ? "off" : "on");
	FUNC2(sd, "test pattern: %s\n",
		  (reg_03 & 0x20) ? "enabled" : "disabled");
	FUNC2(sd, "format: %ux%u\n",
		  FUNC0(sd, THS8200_DTG2_PIXEL_CNT_MSB) * 256 +
		  FUNC0(sd, THS8200_DTG2_PIXEL_CNT_LSB),
		  (FUNC0(sd, THS8200_DTG2_LINE_CNT_MSB) & 0x07) * 256 +
		  FUNC0(sd, THS8200_DTG2_LINE_CNT_LSB));
	FUNC3(sd->name, "Configured format:",
			      &state->dv_timings, true);
	return 0;
}