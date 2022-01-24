#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int device_caps; int /*<<< orphan*/ * queue; int /*<<< orphan*/ * ctrl_handler; } ;
struct TYPE_8__ {int /*<<< orphan*/  hdl; } ;
struct cx8802_dev {TYPE_3__ mpeg_dev; TYPE_6__* core; int /*<<< orphan*/  vb2_mpegq; TYPE_1__ cxhdl; int /*<<< orphan*/  pci; } ;
struct TYPE_9__ {scalar_t__ tuner_type; } ;
struct TYPE_11__ {TYPE_2__ board; } ;

/* Variables and functions */
 scalar_t__ UNSET ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_TUNER ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  cx8802_mpeg_template ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct cx8802_dev*) ; 

__attribute__((used)) static int FUNC5(struct cx8802_dev *dev)
{
	int err;

	FUNC0(dev->core, dev->pci, &dev->mpeg_dev,
		       &cx8802_mpeg_template, "mpeg");
	dev->mpeg_dev.ctrl_handler = &dev->cxhdl.hdl;
	FUNC4(&dev->mpeg_dev, dev);
	dev->mpeg_dev.queue = &dev->vb2_mpegq;
	dev->mpeg_dev.device_caps = V4L2_CAP_READWRITE | V4L2_CAP_STREAMING |
				    V4L2_CAP_VIDEO_CAPTURE;
	if (dev->core->board.tuner_type != UNSET)
		dev->mpeg_dev.device_caps |= V4L2_CAP_TUNER;
	err = FUNC3(&dev->mpeg_dev, VFL_TYPE_GRABBER, -1);
	if (err < 0) {
		FUNC1("can't register mpeg device\n");
		return err;
	}
	FUNC1("registered device %s [mpeg]\n",
		FUNC2(&dev->mpeg_dev));
	return 0;
}