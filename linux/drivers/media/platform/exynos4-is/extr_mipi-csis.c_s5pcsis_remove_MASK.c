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
struct v4l2_subdev {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct csis_state {TYPE_1__ sd; int /*<<< orphan*/ * clock; } ;

/* Variables and functions */
 size_t CSIS_CLK_MUX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct csis_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct csis_state* FUNC7 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct v4l2_subdev *sd = FUNC2(pdev);
	struct csis_state *state = FUNC7(sd);

	FUNC3(&pdev->dev);
	FUNC6(&pdev->dev, true);
	FUNC0(state->clock[CSIS_CLK_MUX]);
	FUNC4(&pdev->dev);
	FUNC5(state);

	FUNC1(&state->sd.entity);

	return 0;
}