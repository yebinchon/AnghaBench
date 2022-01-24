#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ width; scalar_t__ height; scalar_t__ code; } ;
struct v4l2_subdev_format {TYPE_2__ format; int /*<<< orphan*/  which; int /*<<< orphan*/  pad; } ;
struct media_pad {int /*<<< orphan*/  index; int /*<<< orphan*/  entity; } ;
struct TYPE_6__ {scalar_t__ width; scalar_t__ height; scalar_t__ code; } ;
struct TYPE_4__ {int /*<<< orphan*/  sd; } ;
struct camif_dev {TYPE_3__ mbus_fmt; TYPE_1__ sensor; int /*<<< orphan*/ * pads; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int EPIPE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  get_fmt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct media_pad* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct media_pad*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int FUNC3(struct camif_dev *camif)
{
	struct v4l2_subdev_format src_fmt;
	struct media_pad *pad;
	int ret;

	/* Retrieve format at the sensor subdev source pad */
	pad = FUNC1(&camif->pads[0]);
	if (!pad || !FUNC0(pad->entity))
		return -EPIPE;

	src_fmt.pad = pad->index;
	src_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
	ret = FUNC2(camif->sensor.sd, pad, get_fmt, NULL, &src_fmt);
	if (ret < 0 && ret != -ENOIOCTLCMD)
		return -EPIPE;

	if (src_fmt.format.width != camif->mbus_fmt.width ||
	    src_fmt.format.height != camif->mbus_fmt.height ||
	    src_fmt.format.code != camif->mbus_fmt.code)
		return -EPIPE;

	return 0;
}