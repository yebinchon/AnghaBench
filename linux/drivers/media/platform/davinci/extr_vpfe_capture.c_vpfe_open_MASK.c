#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vpfe_fh {int /*<<< orphan*/  fh; scalar_t__ io_allowed; struct vpfe_device* vpfe_dev; } ;
struct vpfe_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  usrs; int /*<<< orphan*/  initialized; int /*<<< orphan*/  v4l2_dev; TYPE_1__* cfg; } ;
struct video_device {int dummy; } ;
struct file {struct vpfe_fh* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_subdevs; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (struct vpfe_fh*) ; 
 struct vpfe_fh* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct video_device*) ; 
 struct video_device* FUNC9 (struct file*) ; 
 struct vpfe_device* FUNC10 (struct file*) ; 
 scalar_t__ FUNC11 (struct vpfe_device*) ; 

__attribute__((used)) static int FUNC12(struct file *file)
{
	struct vpfe_device *vpfe_dev = FUNC10(file);
	struct video_device *vdev = FUNC9(file);
	struct vpfe_fh *fh;

	FUNC4(1, debug, &vpfe_dev->v4l2_dev, "vpfe_open\n");

	if (!vpfe_dev->cfg->num_subdevs) {
		FUNC5(&vpfe_dev->v4l2_dev, "No decoder registered\n");
		return -ENODEV;
	}

	/* Allocate memory for the file handle object */
	fh = FUNC1(sizeof(*fh), GFP_KERNEL);
	if (!fh)
		return -ENOMEM;

	/* store pointer to fh in private_data member of file */
	file->private_data = fh;
	fh->vpfe_dev = vpfe_dev;
	FUNC8(&fh->fh, vdev);
	FUNC2(&vpfe_dev->lock);
	/* If decoder is not initialized. initialize it */
	if (!vpfe_dev->initialized) {
		if (FUNC11(vpfe_dev)) {
			FUNC3(&vpfe_dev->lock);
			FUNC7(&fh->fh);
			FUNC0(fh);
			return -ENODEV;
		}
	}
	/* Increment device usrs counter */
	vpfe_dev->usrs++;
	/* Set io_allowed member to false */
	fh->io_allowed = 0;
	FUNC6(&fh->fh);
	FUNC3(&vpfe_dev->lock);
	return 0;
}