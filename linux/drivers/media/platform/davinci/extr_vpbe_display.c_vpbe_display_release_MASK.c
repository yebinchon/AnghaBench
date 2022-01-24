#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct osd_layer_config {scalar_t__ pixfmt; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; struct osd_layer_config config; } ;
struct vpbe_layer {int /*<<< orphan*/  opslock; TYPE_2__ layer_info; int /*<<< orphan*/  usrs; struct vpbe_display* disp_dev; } ;
struct vpbe_display {scalar_t__ cbcr_ofst; struct osd_state* osd_device; struct vpbe_device* vpbe_dev; } ;
struct vpbe_device {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* release_layer ) (struct osd_state*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disable_layer ) (struct osd_state*,int /*<<< orphan*/ ) ;} ;
struct osd_state {TYPE_1__ ops; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ PIXFMT_NV12 ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 struct vpbe_layer* FUNC1 (struct vpbe_display*,struct vpbe_layer*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct osd_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct osd_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct osd_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct osd_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct osd_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct vpbe_layer* FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct vpbe_layer *layer = FUNC10(file);
	struct osd_layer_config *cfg  = &layer->layer_info.config;
	struct vpbe_display *disp_dev = layer->disp_dev;
	struct vpbe_device *vpbe_dev = disp_dev->vpbe_dev;
	struct osd_state *osd_device = disp_dev->osd_device;

	FUNC9(1, debug, &vpbe_dev->v4l2_dev, "vpbe_display_release\n");

	FUNC2(&layer->opslock);

	osd_device->ops.disable_layer(osd_device,
			layer->layer_info.id);
	/* Decrement layer usrs counter */
	layer->usrs--;
	/* If this file handle has initialize encoder device, reset it */
	if (!layer->usrs) {
		if (cfg->pixfmt == PIXFMT_NV12) {
			struct vpbe_layer *otherlayer;
			otherlayer =
			FUNC1(disp_dev, layer);
			osd_device->ops.disable_layer(osd_device,
					otherlayer->layer_info.id);
			osd_device->ops.release_layer(osd_device,
					otherlayer->layer_info.id);
		}
		osd_device->ops.disable_layer(osd_device,
				layer->layer_info.id);
		osd_device->ops.release_layer(osd_device,
				layer->layer_info.id);
	}

	FUNC0(file, NULL);
	FUNC3(&layer->opslock);

	disp_dev->cbcr_ofst = 0;

	return 0;
}