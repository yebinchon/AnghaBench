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
typedef  scalar_t__ u8 ;
struct vpif_channel_config_params {int /*<<< orphan*/  ycmux_mode; } ;
struct vpif_params {struct vpif_channel_config_params std_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPIF_EMULATION_CTRL ; 
 int /*<<< orphan*/  VPIF_REQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vpif_params*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vpif_channel_config_params const*,scalar_t__,scalar_t__) ; 

int FUNC3(struct vpif_params *vpifparams, u8 channel_id)
{
	const struct vpif_channel_config_params *config = &vpifparams->std_info;
	int found = 1;

	FUNC2(config, channel_id, channel_id);
	if (!config->ycmux_mode) {
		/* YC are on separate channels (HDTV formats) */
		FUNC2(config, channel_id + 1, channel_id);
		found = 2;
	}

	FUNC0(vpifparams, channel_id, found);

	FUNC1(0x80, VPIF_REQ_SIZE);
	FUNC1(0x01, VPIF_EMULATION_CTRL);

	return found;
}