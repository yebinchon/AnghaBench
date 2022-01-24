#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int flags; int /*<<< orphan*/  entity; } ;
struct media_entity {int dummy; } ;
struct ispif_line {int /*<<< orphan*/  interface; int /*<<< orphan*/  vfe_id; int /*<<< orphan*/  csid_id; } ;
typedef  enum vfe_line_id { ____Placeholder_vfe_line_id } vfe_line_id ;

/* Variables and functions */
 int EBUSY ; 
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct media_pad const*) ; 
 struct v4l2_subdev* FUNC2 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 struct ispif_line* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct media_entity *entity,
			    const struct media_pad *local,
			    const struct media_pad *remote, u32 flags)
{
	if (flags & MEDIA_LNK_FL_ENABLED) {
		if (FUNC1(local))
			return -EBUSY;

		if (local->flags & MEDIA_PAD_FL_SINK) {
			struct v4l2_subdev *sd;
			struct ispif_line *line;

			sd = FUNC2(entity);
			line = FUNC6(sd);

			FUNC3(remote->entity, &line->csid_id);
		} else { /* MEDIA_PAD_FL_SOURCE */
			struct v4l2_subdev *sd;
			struct ispif_line *line;
			enum vfe_line_id id;

			sd = FUNC2(entity);
			line = FUNC6(sd);

			FUNC4(remote->entity, &line->vfe_id);
			FUNC5(remote->entity, &id);
			line->interface = FUNC0(id);
		}
	}

	return 0;
}