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
struct osd_layer_config {int dummy; } ;
struct osd_window_state {unsigned long fb_base_phys; struct osd_layer_config lconfig; } ;
struct osd_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  field_inversion; int /*<<< orphan*/  pingpong; struct osd_window_state* win; } ;
typedef  enum osd_layer { ____Placeholder_osd_layer } osd_layer ;

/* Variables and functions */
 int WIN_VID0 ; 
 int /*<<< orphan*/  FUNC0 (struct osd_state*,int /*<<< orphan*/ ,unsigned long,struct osd_layer_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct osd_state*,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct osd_state *sd, enum osd_layer layer,
			    unsigned long fb_base_phys,
			    unsigned long cbcr_ofst)
{
	struct osd_state *osd = sd;
	struct osd_window_state *win = &osd->win[layer];
	struct osd_layer_config *cfg = &win->lconfig;
	unsigned long flags;

	FUNC2(&osd->lock, flags);

	win->fb_base_phys = fb_base_phys & ~0x1F;
	FUNC1(sd, layer, fb_base_phys, cbcr_ofst);

	if (layer == WIN_VID0) {
		osd->pingpong =
		    FUNC0(sd, osd->field_inversion,
						       win->fb_base_phys,
						       cfg);
	}

	FUNC3(&osd->lock, flags);
}