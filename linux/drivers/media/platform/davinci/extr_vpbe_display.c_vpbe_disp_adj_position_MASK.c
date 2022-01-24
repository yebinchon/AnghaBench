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
struct osd_layer_config {void* ypos; void* xpos; scalar_t__ ysize; scalar_t__ xsize; } ;
struct TYPE_4__ {struct osd_layer_config config; } ;
struct vpbe_layer {TYPE_2__ layer_info; } ;
struct vpbe_display {struct vpbe_device* vpbe_dev; } ;
struct TYPE_3__ {scalar_t__ yres; scalar_t__ xres; } ;
struct vpbe_device {int /*<<< orphan*/  v4l2_dev; TYPE_1__ current_timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 void* FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,void*,void*) ; 

__attribute__((used)) static void FUNC2(struct vpbe_display *disp_dev,
			struct vpbe_layer *layer,
			int top, int left)
{
	struct osd_layer_config *cfg = &layer->layer_info.config;
	struct vpbe_device *vpbe_dev = disp_dev->vpbe_dev;

	cfg->xpos = FUNC0((unsigned int)left,
			vpbe_dev->current_timings.xres - cfg->xsize);
	cfg->ypos = FUNC0((unsigned int)top,
			vpbe_dev->current_timings.yres - cfg->ysize);

	FUNC1(1, debug, &vpbe_dev->v4l2_dev,
		"new xpos = %d, ypos = %d\n",
		cfg->xpos, cfg->ypos);
}