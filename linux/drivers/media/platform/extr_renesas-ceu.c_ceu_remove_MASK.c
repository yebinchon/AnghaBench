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
struct ceu_device {int /*<<< orphan*/  vdev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  notifier; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct ceu_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct ceu_device *ceudev = FUNC0(pdev);

	FUNC1(ceudev->dev);

	FUNC3(&ceudev->notifier);

	FUNC2(&ceudev->notifier);

	FUNC4(&ceudev->v4l2_dev);

	FUNC5(&ceudev->vdev);

	return 0;
}