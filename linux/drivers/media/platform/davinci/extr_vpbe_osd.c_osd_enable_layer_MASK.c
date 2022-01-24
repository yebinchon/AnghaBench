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
struct osd_layer_config {scalar_t__ pixfmt; int /*<<< orphan*/  ysize; int /*<<< orphan*/  xsize; int /*<<< orphan*/  line_length; } ;
struct osd_window_state {int is_enabled; int /*<<< orphan*/  fb_base_phys; int /*<<< orphan*/  is_allocated; struct osd_layer_config lconfig; } ;
struct osd_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  blink; int /*<<< orphan*/  is_blinking; struct osd_window_state* win; } ;
typedef  enum osd_layer { ____Placeholder_osd_layer } osd_layer ;

/* Variables and functions */
 scalar_t__ PIXFMT_OSD_ATTR ; 
 int /*<<< orphan*/  FUNC0 (struct osd_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct osd_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct osd_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct osd_state *sd, enum osd_layer layer,
			    int otherwin)
{
	struct osd_state *osd = sd;
	struct osd_window_state *win = &osd->win[layer];
	struct osd_layer_config *cfg = &win->lconfig;
	unsigned long flags;

	FUNC3(&osd->lock, flags);

	/*
	 * use otherwin flag to know this is the other vid window
	 * in YUV420 mode, if is, skip this check
	 */
	if (!otherwin && (!win->is_allocated ||
			!win->fb_base_phys ||
			!cfg->line_length ||
			!cfg->xsize ||
			!cfg->ysize)) {
		FUNC4(&osd->lock, flags);
		return -1;
	}

	if (win->is_enabled) {
		FUNC4(&osd->lock, flags);
		return 0;
	}
	win->is_enabled = 1;

	if (cfg->pixfmt != PIXFMT_OSD_ATTR)
		FUNC1(sd, layer);
	else {
		FUNC0(sd);
		FUNC2(sd, osd->is_blinking, osd->blink);
	}

	FUNC4(&osd->lock, flags);

	return 0;
}