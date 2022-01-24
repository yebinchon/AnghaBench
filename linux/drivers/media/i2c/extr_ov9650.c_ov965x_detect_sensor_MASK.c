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
typedef  int /*<<< orphan*/  u8 ;
struct v4l2_subdev {int dummy; } ;
struct ov965x {scalar_t__ id; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ OV9650_ID ; 
 scalar_t__ OV9652_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_PID ; 
 int /*<<< orphan*/  REG_VER ; 
 int FUNC1 (struct ov965x*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ov965x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ov965x* FUNC6 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd)
{
	struct ov965x *ov965x = FUNC6(sd);
	u8 pid, ver;
	int ret;

	FUNC3(&ov965x->lock);
	ret = FUNC1(ov965x, 1);
	if (ret)
		goto out;

	FUNC2(25);

	/* Check sensor revision */
	ret = FUNC5(ov965x, REG_PID, &pid);
	if (!ret)
		ret = FUNC5(ov965x, REG_VER, &ver);

	FUNC1(ov965x, 0);

	if (!ret) {
		ov965x->id = FUNC0(pid, ver);
		if (ov965x->id == OV9650_ID || ov965x->id == OV9652_ID) {
			FUNC8(sd, "Found OV%04X sensor\n", ov965x->id);
		} else {
			FUNC7(sd, "Sensor detection failed (%04X, %d)\n",
				 ov965x->id, ret);
			ret = -ENODEV;
		}
	}
out:
	FUNC4(&ov965x->lock);

	return ret;
}