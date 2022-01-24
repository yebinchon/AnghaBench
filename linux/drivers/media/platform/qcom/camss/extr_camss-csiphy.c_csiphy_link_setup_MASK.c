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
struct v4l2_subdev {int dummy; } ;
struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  csid_id; } ;
struct csiphy_device {TYPE_1__ cfg; } ;
struct csid_device {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EBUSY ; 
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_PAD_FL_SOURCE ; 
 scalar_t__ FUNC0 (struct media_pad const*) ; 
 struct v4l2_subdev* FUNC1 (struct media_entity*) ; 
 void* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct media_entity *entity,
			     const struct media_pad *local,
			     const struct media_pad *remote, u32 flags)
{
	if ((local->flags & MEDIA_PAD_FL_SOURCE) &&
	    (flags & MEDIA_LNK_FL_ENABLED)) {
		struct v4l2_subdev *sd;
		struct csiphy_device *csiphy;
		struct csid_device *csid;

		if (FUNC0(local))
			return -EBUSY;

		sd = FUNC1(entity);
		csiphy = FUNC2(sd);

		sd = FUNC1(remote->entity);
		csid = FUNC2(sd);

		csiphy->cfg.csid_id = csid->id;
	}

	return 0;
}