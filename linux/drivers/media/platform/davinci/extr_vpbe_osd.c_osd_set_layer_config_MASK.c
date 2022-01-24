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
struct osd_layer_config {scalar_t__ pixfmt; } ;
struct osd_window_state {int /*<<< orphan*/  fb_base_phys; struct osd_layer_config lconfig; scalar_t__ is_enabled; } ;
struct osd_state {scalar_t__ yc_pixfmt; int /*<<< orphan*/  lock; int /*<<< orphan*/  field_inversion; int /*<<< orphan*/  pingpong; struct osd_window_state* win; struct osd_osdwin_state* osdwin; int /*<<< orphan*/  blink; int /*<<< orphan*/  is_blinking; } ;
struct osd_osdwin_state {unsigned char* palette_map; int /*<<< orphan*/  rec601_attenuation; int /*<<< orphan*/  colorkey; scalar_t__ colorkey_blending; int /*<<< orphan*/  blend; int /*<<< orphan*/  clut; } ;
typedef  enum osd_win_layer { ____Placeholder_osd_win_layer } osd_win_layer ;
typedef  enum osd_layer { ____Placeholder_osd_layer } osd_layer ;

/* Variables and functions */
 size_t OSDWIN_OSD0 ; 
 size_t OSDWIN_OSD1 ; 
#define  PIXFMT_1BPP 130 
#define  PIXFMT_2BPP 129 
#define  PIXFMT_4BPP 128 
 scalar_t__ PIXFMT_OSD_ATTR ; 
 scalar_t__ PIXFMT_RGB888 ; 
 int WIN_OSD0 ; 
 int WIN_OSD1 ; 
 size_t WIN_VID0 ; 
 size_t WIN_VID1 ; 
 int /*<<< orphan*/  FUNC0 (struct osd_state*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct osd_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct osd_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct osd_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct osd_layer_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct osd_state*,size_t,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct osd_state*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct osd_state*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct osd_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct osd_state*,int,struct osd_layer_config*) ; 
 int /*<<< orphan*/  FUNC9 (struct osd_state*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct osd_state*,int,unsigned char,unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct osd_state*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC15 (struct osd_state*,int,struct osd_layer_config*) ; 

__attribute__((used)) static int FUNC16(struct osd_state *sd, enum osd_layer layer,
				struct osd_layer_config *lconfig)
{
	struct osd_state *osd = sd;
	struct osd_window_state *win = &osd->win[layer];
	struct osd_layer_config *cfg = &win->lconfig;
	unsigned long flags;
	int reject_config;

	FUNC13(&osd->lock, flags);

	reject_config = FUNC15(sd, layer, lconfig);
	if (reject_config) {
		FUNC14(&osd->lock, flags);
		return reject_config;
	}

	/* update the current Cb/Cr order */
	if (FUNC12(lconfig->pixfmt))
		osd->yc_pixfmt = lconfig->pixfmt;

	/*
	 * If we are switching OSD1 from normal mode to attribute mode or from
	 * attribute mode to normal mode, then we must disable the window.
	 */
	if (layer == WIN_OSD1) {
		if (((lconfig->pixfmt == PIXFMT_OSD_ATTR) &&
		  (cfg->pixfmt != PIXFMT_OSD_ATTR)) ||
		  ((lconfig->pixfmt != PIXFMT_OSD_ATTR) &&
		  (cfg->pixfmt == PIXFMT_OSD_ATTR))) {
			win->is_enabled = 0;
			FUNC1(sd, layer);
		}
	}

	FUNC8(sd, layer, lconfig);

	if (layer == WIN_OSD1) {
		struct osd_osdwin_state *osdwin_state =
		    &osd->osdwin[OSDWIN_OSD1];

		if ((lconfig->pixfmt != PIXFMT_OSD_ATTR) &&
		  (cfg->pixfmt == PIXFMT_OSD_ATTR)) {
			/*
			 * We just switched OSD1 from attribute mode to normal
			 * mode, so we must initialize the CLUT select, the
			 * blend factor, transparency colorkey enable, and
			 * attenuation enable (DM6446 only) bits in the
			 * OSDWIN1MD register.
			 */
			FUNC9(sd, OSDWIN_OSD1,
						   osdwin_state->clut);
			FUNC6(sd, OSDWIN_OSD1,
							  osdwin_state->blend);
			if (osdwin_state->colorkey_blending) {
				FUNC4(sd, OSDWIN_OSD1,
							       osdwin_state->
							       colorkey,
							       lconfig->pixfmt);
			} else
				FUNC0(sd, OSDWIN_OSD1);
			FUNC11(sd, OSDWIN_OSD1,
						    osdwin_state->
						    rec601_attenuation);
		} else if ((lconfig->pixfmt == PIXFMT_OSD_ATTR) &&
		  (cfg->pixfmt != PIXFMT_OSD_ATTR)) {
			/*
			 * We just switched OSD1 from normal mode to attribute
			 * mode, so we must initialize the blink enable and
			 * blink interval bits in the OSDATRMD register.
			 */
			FUNC7(sd, osd->is_blinking,
							  osd->blink);
		}
	}

	/*
	 * If we just switched to a 1-, 2-, or 4-bits-per-pixel bitmap format
	 * then configure a default palette map.
	 */
	if ((lconfig->pixfmt != cfg->pixfmt) &&
	  ((lconfig->pixfmt == PIXFMT_1BPP) ||
	  (lconfig->pixfmt == PIXFMT_2BPP) ||
	  (lconfig->pixfmt == PIXFMT_4BPP))) {
		enum osd_win_layer osdwin =
		    ((layer == WIN_OSD0) ? OSDWIN_OSD0 : OSDWIN_OSD1);
		struct osd_osdwin_state *osdwin_state =
		    &osd->osdwin[osdwin];
		unsigned char clut_index;
		unsigned char clut_entries = 0;

		switch (lconfig->pixfmt) {
		case PIXFMT_1BPP:
			clut_entries = 2;
			break;
		case PIXFMT_2BPP:
			clut_entries = 4;
			break;
		case PIXFMT_4BPP:
			clut_entries = 16;
			break;
		default:
			break;
		}
		/*
		 * The default palette map maps the pixel value to the clut
		 * index, i.e. pixel value 0 maps to clut entry 0, pixel value
		 * 1 maps to clut entry 1, etc.
		 */
		for (clut_index = 0; clut_index < 16; clut_index++) {
			osdwin_state->palette_map[clut_index] = clut_index;
			if (clut_index < clut_entries) {
				FUNC10(sd, osdwin, clut_index,
						     clut_index,
						     lconfig->pixfmt);
			}
		}
	}

	*cfg = *lconfig;
	/* DM6446: configure the RGB888 enable and window selection */
	if (osd->win[WIN_VID0].lconfig.pixfmt == PIXFMT_RGB888)
		FUNC5(sd, WIN_VID0);
	else if (osd->win[WIN_VID1].lconfig.pixfmt == PIXFMT_RGB888)
		FUNC5(sd, WIN_VID1);
	else
		FUNC2(sd);

	if (layer == WIN_VID0) {
		osd->pingpong =
		    FUNC3(sd, osd->field_inversion,
						       win->fb_base_phys,
						       cfg);
	}

	FUNC14(&osd->lock, flags);

	return 0;
}