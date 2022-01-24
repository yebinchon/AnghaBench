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
struct TYPE_2__ {int /*<<< orphan*/  ctrl_handler; } ;
struct si476x_radio {int /*<<< orphan*/  debugfs; int /*<<< orphan*/  v4l2dev; TYPE_1__ videodev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct si476x_radio* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct si476x_radio *radio = FUNC1(pdev);

	FUNC2(radio->videodev.ctrl_handler);
	FUNC4(&radio->videodev);
	FUNC3(&radio->v4l2dev);
	FUNC0(radio->debugfs);

	return 0;
}