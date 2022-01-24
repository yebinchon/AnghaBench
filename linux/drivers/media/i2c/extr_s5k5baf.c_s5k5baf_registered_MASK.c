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
struct v4l2_subdev {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct TYPE_4__ {int /*<<< orphan*/  entity; int /*<<< orphan*/  name; } ;
struct s5k5baf {TYPE_1__ sd; TYPE_2__ cis_sd; } ;

/* Variables and functions */
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_LNK_FL_IMMUTABLE ; 
 int /*<<< orphan*/  PAD_CIS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct s5k5baf* FUNC1 (struct v4l2_subdev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd)
{
	struct s5k5baf *state = FUNC1(sd);
	int ret;

	ret = FUNC2(sd->v4l2_dev, &state->cis_sd);
	if (ret < 0)
		FUNC3(sd, "failed to register subdev %s\n",
			 state->cis_sd.name);
	else
		ret = FUNC0(&state->cis_sd.entity, PAD_CIS,
					       &state->sd.entity, PAD_CIS,
					       MEDIA_LNK_FL_IMMUTABLE |
					       MEDIA_LNK_FL_ENABLED);
	return ret;
}