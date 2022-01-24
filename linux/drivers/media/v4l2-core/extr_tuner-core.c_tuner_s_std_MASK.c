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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct tuner {int /*<<< orphan*/  std; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tuner*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tuner*,int /*<<< orphan*/ ) ; 
 struct tuner* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct tuner*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, v4l2_std_id std)
{
	struct tuner *t = FUNC3(sd);

	if (FUNC2(t, V4L2_TUNER_ANALOG_TV))
		return 0;

	t->std = FUNC4(t, std);
	if (t->std != std)
		FUNC0("Fixup standard %llx to %llx\n", std, t->std);
	FUNC1(t, 0);
	return 0;
}