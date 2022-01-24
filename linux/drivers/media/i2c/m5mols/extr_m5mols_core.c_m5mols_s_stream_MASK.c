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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {size_t res_type; int /*<<< orphan*/  lock; TYPE_1__* ffmt; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M5MOLS_RESTYPE_CAPTURE ; 
 int /*<<< orphan*/  M5MOLS_RESTYPE_MONITOR ; 
 int /*<<< orphan*/  REG_PARAMETER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct m5mols_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct m5mols_info*) ; 
 int FUNC3 (struct m5mols_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct m5mols_info* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, int enable)
{
	struct m5mols_info *info = FUNC6(sd);
	u32 code;
	int ret;

	FUNC4(&info->lock);
	code = info->ffmt[info->res_type].code;

	if (enable) {
		if (FUNC0(code, M5MOLS_RESTYPE_MONITOR))
			ret = FUNC3(info);
		else if (FUNC0(code, M5MOLS_RESTYPE_CAPTURE))
			ret = FUNC2(info);
		else
			ret = -EINVAL;
	} else {
		ret = FUNC1(info, REG_PARAMETER);
	}

	FUNC5(&info->lock);
	return ret;
}