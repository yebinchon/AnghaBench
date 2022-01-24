#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {TYPE_4__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct media_link {TYPE_1__* source; } ;
struct isp_ccdc_device {scalar_t__ input; } ;
struct TYPE_6__ {unsigned long data_lane_shift; } ;
struct TYPE_7__ {TYPE_2__ parallel; } ;
struct isp_bus_cfg {TYPE_3__ bus; } ;
struct TYPE_5__ {int /*<<< orphan*/  entity; } ;

/* Variables and functions */
 scalar_t__ CCDC_INPUT_PARALLEL ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 struct v4l2_subdev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct isp_ccdc_device* FUNC2 (struct v4l2_subdev*) ; 
 struct isp_bus_cfg* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			      struct media_link *link,
			      struct v4l2_subdev_format *source_fmt,
			      struct v4l2_subdev_format *sink_fmt)
{
	struct isp_ccdc_device *ccdc = FUNC2(sd);
	unsigned long parallel_shift;

	/* Check if the two ends match */
	if (source_fmt->format.width != sink_fmt->format.width ||
	    source_fmt->format.height != sink_fmt->format.height)
		return -EPIPE;

	/* We've got a parallel sensor here. */
	if (ccdc->input == CCDC_INPUT_PARALLEL) {
		struct v4l2_subdev *sd =
			FUNC1(link->source->entity);
		struct isp_bus_cfg *bus_cfg = FUNC3(sd);

		parallel_shift = bus_cfg->bus.parallel.data_lane_shift;
	} else {
		parallel_shift = 0;
	}

	/* Lane shifter may be used to drop bits on CCDC sink pad */
	if (!FUNC0(source_fmt->format.code,
			       sink_fmt->format.code, parallel_shift))
		return -EPIPE;

	return 0;
}