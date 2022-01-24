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
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct vpbe_layer {int /*<<< orphan*/  usrs; int /*<<< orphan*/  opslock; TYPE_2__ layer_info; struct vpbe_display* disp_dev; } ;
struct vpbe_display {struct osd_state* osd_device; struct vpbe_device* vpbe_dev; } ;
struct vpbe_device {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_3__ {int (* request_layer ) (struct osd_state*,int /*<<< orphan*/ ) ;} ;
struct osd_state {TYPE_1__ ops; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct osd_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 struct vpbe_layer* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct vpbe_layer *layer = FUNC8(file);
	struct vpbe_display *disp_dev = layer->disp_dev;
	struct vpbe_device *vpbe_dev = disp_dev->vpbe_dev;
	struct osd_state *osd_device = disp_dev->osd_device;
	int err;

	/* creating context for file descriptor */
	err = FUNC6(file);
	if (err) {
		FUNC4(&vpbe_dev->v4l2_dev, "v4l2_fh_open failed\n");
		return err;
	}

	/* leaving if layer is already initialized */
	if (!FUNC5(file))
		return err;

	if (!layer->usrs) {
		if (FUNC0(&layer->opslock))
			return -ERESTARTSYS;
		/* First claim the layer for this device */
		err = osd_device->ops.request_layer(osd_device,
						layer->layer_info.id);
		FUNC1(&layer->opslock);
		if (err < 0) {
			/* Couldn't get layer */
			FUNC4(&vpbe_dev->v4l2_dev,
				"Display Manager failed to allocate layer\n");
			FUNC7(file);
			return -EINVAL;
		}
	}
	/* Increment layer usrs counter */
	layer->usrs++;
	FUNC3(1, debug, &vpbe_dev->v4l2_dev,
			"vpbe display device opened successfully\n");
	return 0;
}