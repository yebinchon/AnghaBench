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
struct vsp1_video {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  config; } ;
struct TYPE_3__ {int rotate; } ;
struct vsp1_rwpf {TYPE_2__ entity; TYPE_1__ flip; struct vsp1_video* video; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  RWPF_PAD_SINK ; 
 int /*<<< orphan*/  RWPF_PAD_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct v4l2_mbus_framefmt* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vsp1_rwpf *wpf, unsigned int rotation)
{
	struct vsp1_video *video = wpf->video;
	struct v4l2_mbus_framefmt *sink_format;
	struct v4l2_mbus_framefmt *source_format;
	bool rotate;
	int ret = 0;

	/*
	 * Only consider the 0°/180° from/to 90°/270° modifications, the rest
	 * is taken care of by the flipping configuration.
	 */
	rotate = rotation == 90 || rotation == 270;
	if (rotate == wpf->flip.rotate)
		return 0;

	/* Changing rotation isn't allowed when buffers are allocated. */
	FUNC0(&video->lock);

	if (FUNC2(&video->queue)) {
		ret = -EBUSY;
		goto done;
	}

	sink_format = FUNC3(&wpf->entity,
						 wpf->entity.config,
						 RWPF_PAD_SINK);
	source_format = FUNC3(&wpf->entity,
						   wpf->entity.config,
						   RWPF_PAD_SOURCE);

	FUNC0(&wpf->entity.lock);

	if (rotate) {
		source_format->width = sink_format->height;
		source_format->height = sink_format->width;
	} else {
		source_format->width = sink_format->width;
		source_format->height = sink_format->height;
	}

	wpf->flip.rotate = rotate;

	FUNC1(&wpf->entity.lock);

done:
	FUNC1(&video->lock);
	return ret;
}