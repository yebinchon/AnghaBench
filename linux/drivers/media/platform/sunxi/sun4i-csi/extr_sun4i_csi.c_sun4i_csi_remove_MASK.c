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
struct sun4i_csi {int /*<<< orphan*/  mdev; int /*<<< orphan*/  notifier; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sun4i_csi* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sun4i_csi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct sun4i_csi *csi = FUNC2(pdev);

	FUNC5(&csi->notifier);
	FUNC4(&csi->notifier);
	FUNC1(&csi->mdev);
	FUNC3(csi);
	FUNC0(&csi->mdev);

	return 0;
}