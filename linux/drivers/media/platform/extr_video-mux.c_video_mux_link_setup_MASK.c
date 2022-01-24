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
typedef  int u32 ;
typedef  size_t u16 ;
struct video_mux {size_t active; int /*<<< orphan*/  lock; int /*<<< orphan*/  mux; int /*<<< orphan*/ * format_mbus; } ;
struct v4l2_subdev {int /*<<< orphan*/  dev; } ;
struct media_pad {int flags; size_t index; TYPE_1__* entity; } ;
struct media_entity {size_t num_pads; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct v4l2_subdev* FUNC1 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 struct video_mux* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct media_entity *entity,
				const struct media_pad *local,
				const struct media_pad *remote, u32 flags)
{
	struct v4l2_subdev *sd = FUNC1(entity);
	struct video_mux *vmux = FUNC6(sd);
	u16 source_pad = entity->num_pads - 1;
	int ret = 0;

	/*
	 * The mux state is determined by the enabled sink pad link.
	 * Enabling or disabling the source pad link has no effect.
	 */
	if (local->flags & MEDIA_PAD_FL_SOURCE)
		return 0;

	FUNC0(sd->dev, "link setup '%s':%d->'%s':%d[%d]",
		remote->entity->name, remote->index, local->entity->name,
		local->index, flags & MEDIA_LNK_FL_ENABLED);

	FUNC2(&vmux->lock);

	if (flags & MEDIA_LNK_FL_ENABLED) {
		if (vmux->active == local->index)
			goto out;

		if (vmux->active >= 0) {
			ret = -EBUSY;
			goto out;
		}

		FUNC0(sd->dev, "setting %d active\n", local->index);
		ret = FUNC5(vmux->mux, local->index);
		if (ret < 0)
			goto out;
		vmux->active = local->index;

		/* Propagate the active format to the source */
		vmux->format_mbus[source_pad] = vmux->format_mbus[vmux->active];
	} else {
		if (vmux->active != local->index)
			goto out;

		FUNC0(sd->dev, "going inactive\n");
		FUNC4(vmux->mux);
		vmux->active = -1;
	}

out:
	FUNC3(&vmux->lock);
	return ret;
}