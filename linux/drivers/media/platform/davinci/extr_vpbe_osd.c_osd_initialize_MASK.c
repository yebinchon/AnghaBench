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
struct osd_state {scalar_t__ vpbe_type; int /*<<< orphan*/  rom_clut; int /*<<< orphan*/  field_inversion; int /*<<< orphan*/  yc_pixfmt; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PIXFMT_YCBCRI ; 
 int /*<<< orphan*/  ROM_CLUT1 ; 
 scalar_t__ VPBE_VERSION_3 ; 
 int /*<<< orphan*/  WIN_OSD0 ; 
 int /*<<< orphan*/  WIN_OSD1 ; 
 int /*<<< orphan*/  WIN_VID0 ; 
 int /*<<< orphan*/  WIN_VID1 ; 
 int /*<<< orphan*/  FUNC0 (struct osd_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct osd_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct osd_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct osd_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct osd_state *osd)
{
	if (osd == NULL)
		return -ENODEV;
	FUNC0(osd);

	/* set default Cb/Cr order */
	osd->yc_pixfmt = PIXFMT_YCBCRI;

	if (osd->vpbe_type == VPBE_VERSION_3) {
		/*
		 * ROM CLUT1 on the DM355 is similar (identical?) to ROM CLUT0
		 * on the DM6446, so make ROM_CLUT1 the default on the DM355.
		 */
		osd->rom_clut = ROM_CLUT1;
	}

	FUNC1(osd, osd->field_inversion);
	FUNC2(osd, osd->rom_clut);

	FUNC3(osd, WIN_OSD0);
	FUNC3(osd, WIN_VID0);
	FUNC3(osd, WIN_OSD1);
	FUNC3(osd, WIN_VID1);

	return 0;
}