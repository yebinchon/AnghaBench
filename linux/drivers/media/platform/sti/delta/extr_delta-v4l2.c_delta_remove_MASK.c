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
struct platform_device {int dummy; } ;
struct delta_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  dev; int /*<<< orphan*/  work_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delta_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct delta_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct delta_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct delta_dev *delta = FUNC3(pdev);

	FUNC0(delta);

	FUNC1(delta);

	FUNC2(delta->work_queue);

	FUNC5(delta->dev);
	FUNC4(delta->dev);

	FUNC6(&delta->v4l2_dev);

	return 0;
}