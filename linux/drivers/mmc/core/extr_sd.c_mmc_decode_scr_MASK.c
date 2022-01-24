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
typedef  int /*<<< orphan*/  u32 ;
struct sd_scr {int sda_vsn; int bus_widths; int sda_spec3; int sda_spec4; int sda_specx; int cmds; } ;
struct mmc_card {int erased_byte; int /*<<< orphan*/  host; int /*<<< orphan*/ * raw_scr; struct sd_scr scr; } ;

/* Variables and functions */
 int EINVAL ; 
 int SCR_SPEC_VER_2 ; 
 int SD_SCR_BUS_WIDTH_1 ; 
 int SD_SCR_BUS_WIDTH_4 ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC3(struct mmc_card *card)
{
	struct sd_scr *scr = &card->scr;
	unsigned int scr_struct;
	u32 resp[4];

	resp[3] = card->raw_scr[1];
	resp[2] = card->raw_scr[0];

	scr_struct = FUNC0(resp, 60, 4);
	if (scr_struct != 0) {
		FUNC2("%s: unrecognised SCR structure version %d\n",
			FUNC1(card->host), scr_struct);
		return -EINVAL;
	}

	scr->sda_vsn = FUNC0(resp, 56, 4);
	scr->bus_widths = FUNC0(resp, 48, 4);
	if (scr->sda_vsn == SCR_SPEC_VER_2)
		/* Check if Physical Layer Spec v3.0 is supported */
		scr->sda_spec3 = FUNC0(resp, 47, 1);

	if (scr->sda_spec3) {
		scr->sda_spec4 = FUNC0(resp, 42, 1);
		scr->sda_specx = FUNC0(resp, 38, 4);
	}

	if (FUNC0(resp, 55, 1))
		card->erased_byte = 0xFF;
	else
		card->erased_byte = 0x0;

	if (scr->sda_spec3)
		scr->cmds = FUNC0(resp, 32, 2);

	/* SD Spec says: any SD Card shall set at least bits 0 and 2 */
	if (!(scr->bus_widths & SD_SCR_BUS_WIDTH_1) ||
	    !(scr->bus_widths & SD_SCR_BUS_WIDTH_4)) {
		FUNC2("%s: invalid bus width\n", FUNC1(card->host));
		return -EINVAL;
	}

	return 0;
}