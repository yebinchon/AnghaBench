#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  flags; } ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct vivid_dev {int /*<<< orphan*/ * radio_tx_rds_owner; scalar_t__ radio_tx_rds_last_block; int /*<<< orphan*/ * radio_rx_rds_owner; scalar_t__ radio_rx_rds_last_block; int /*<<< orphan*/ * overlay_cap_owner; int /*<<< orphan*/  mutex; TYPE_7__ radio_tx_dev; TYPE_6__ radio_rx_dev; TYPE_5__ sdr_cap_dev; TYPE_4__ vbi_out_dev; TYPE_3__ vbi_cap_dev; TYPE_2__ vid_out_dev; TYPE_1__ vid_cap_dev; int /*<<< orphan*/  v4l2_dev; } ;
struct video_device {scalar_t__ queue; } ;
struct file {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_FL_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  no_error_inj ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct file*) ; 
 int FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (struct file*) ; 
 struct video_device* FUNC7 (struct file*) ; 
 struct vivid_dev* FUNC8 (struct file*) ; 
 int /*<<< orphan*/  FUNC9 (struct video_device*) ; 
 scalar_t__ FUNC10 (struct vivid_dev*) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct vivid_dev *dev = FUNC8(file);
	struct video_device *vdev = FUNC7(file);

	FUNC0(&dev->mutex);
	if (!no_error_inj && FUNC3(file) &&
	    !FUNC9(vdev) && FUNC10(dev)) {
		/*
		 * I am the last user of this driver, and a disconnect
		 * was forced (since this video_device is unregistered),
		 * so re-register all video_device's again.
		 */
		FUNC5(&dev->v4l2_dev, "reconnect\n");
		FUNC2(V4L2_FL_REGISTERED, &dev->vid_cap_dev.flags);
		FUNC2(V4L2_FL_REGISTERED, &dev->vid_out_dev.flags);
		FUNC2(V4L2_FL_REGISTERED, &dev->vbi_cap_dev.flags);
		FUNC2(V4L2_FL_REGISTERED, &dev->vbi_out_dev.flags);
		FUNC2(V4L2_FL_REGISTERED, &dev->sdr_cap_dev.flags);
		FUNC2(V4L2_FL_REGISTERED, &dev->radio_rx_dev.flags);
		FUNC2(V4L2_FL_REGISTERED, &dev->radio_tx_dev.flags);
	}
	FUNC1(&dev->mutex);
	if (file->private_data == dev->overlay_cap_owner)
		dev->overlay_cap_owner = NULL;
	if (file->private_data == dev->radio_rx_rds_owner) {
		dev->radio_rx_rds_last_block = 0;
		dev->radio_rx_rds_owner = NULL;
	}
	if (file->private_data == dev->radio_tx_rds_owner) {
		dev->radio_tx_rds_last_block = 0;
		dev->radio_tx_rds_owner = NULL;
	}
	if (vdev->queue)
		return FUNC6(file);
	return FUNC4(file);
}