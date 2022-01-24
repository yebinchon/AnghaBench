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
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {int /*<<< orphan*/  lock; scalar_t__ ctrl_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_MONITOR ; 
 int /*<<< orphan*/  REG_SAMSUNG_TECHWIN ; 
 scalar_t__ FUNC0 (struct m5mols_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct m5mols_info*) ; 
 int FUNC2 (struct v4l2_subdev*) ; 
 int FUNC3 (struct m5mols_info*,int) ; 
 int FUNC4 (struct m5mols_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct m5mols_info* FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd, int on)
{
	struct m5mols_info *info = FUNC7(sd);
	int ret;

	FUNC5(&info->lock);

	if (on) {
		ret = FUNC3(info, true);
		if (!ret)
			ret = FUNC2(sd);
	} else {
		if (FUNC0(info, REG_SAMSUNG_TECHWIN)) {
			ret = FUNC4(info, REG_MONITOR);
			if (!ret)
				ret = FUNC1(info);
			if (ret < 0)
				FUNC8(sd, "Soft landing lens failed\n");
		}
		ret = FUNC3(info, false);

		info->ctrl_sync = 0;
	}

	FUNC6(&info->lock);
	return ret;
}