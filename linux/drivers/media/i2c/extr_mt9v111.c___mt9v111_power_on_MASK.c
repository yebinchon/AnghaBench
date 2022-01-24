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
struct mt9v111_dev {int /*<<< orphan*/  oe; int /*<<< orphan*/  standby; int /*<<< orphan*/  sysclk; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct mt9v111_dev* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd)
{
	struct mt9v111_dev *mt9v111 = FUNC3(sd);
	int ret;

	ret = FUNC0(mt9v111->clk);
	if (ret)
		return ret;

	FUNC1(mt9v111->clk, mt9v111->sysclk);

	FUNC2(mt9v111->standby, 0);
	FUNC4(500, 1000);

	FUNC2(mt9v111->oe, 1);
	FUNC4(500, 1000);

	return 0;
}