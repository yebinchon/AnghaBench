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
struct mt9v111_dev {int /*<<< orphan*/  clk; int /*<<< orphan*/  standby; int /*<<< orphan*/  oe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct mt9v111_dev* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd)
{
	struct mt9v111_dev *mt9v111 = FUNC2(sd);

	FUNC1(mt9v111->oe, 0);
	FUNC3(500, 1000);

	FUNC1(mt9v111->standby, 1);
	FUNC3(500, 1000);

	FUNC0(mt9v111->clk);

	return 0;
}