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
struct TYPE_3__ {int /*<<< orphan*/  entity; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  entity; } ;
struct s5c73m3 {TYPE_1__ oif_sd; TYPE_2__ sensor_sd; } ;

/* Variables and functions */
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_LNK_FL_IMMUTABLE ; 
 int /*<<< orphan*/  OIF_ISP_PAD ; 
 int /*<<< orphan*/  OIF_JPEG_PAD ; 
 int /*<<< orphan*/  S5C73M3_ISP_PAD ; 
 int /*<<< orphan*/  S5C73M3_JPEG_PAD ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct s5c73m3* FUNC1 (struct v4l2_subdev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd)
{
	struct s5c73m3 *state = FUNC1(sd);
	int ret;

	ret = FUNC2(sd->v4l2_dev, &state->sensor_sd);
	if (ret) {
		FUNC3(sd->v4l2_dev, "Failed to register %s\n",
							state->oif_sd.name);
		return ret;
	}

	ret = FUNC0(&state->sensor_sd.entity,
			S5C73M3_ISP_PAD, &state->oif_sd.entity, OIF_ISP_PAD,
			MEDIA_LNK_FL_IMMUTABLE | MEDIA_LNK_FL_ENABLED);

	ret = FUNC0(&state->sensor_sd.entity,
			S5C73M3_JPEG_PAD, &state->oif_sd.entity, OIF_JPEG_PAD,
			MEDIA_LNK_FL_IMMUTABLE | MEDIA_LNK_FL_ENABLED);

	return ret;
}