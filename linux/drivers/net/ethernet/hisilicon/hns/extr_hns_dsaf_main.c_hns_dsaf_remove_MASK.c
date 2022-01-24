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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 struct dsaf_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsaf_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct dsaf_device *dsaf_dev = FUNC0(&pdev->dev);

	FUNC1(dsaf_dev);

	FUNC5(dsaf_dev);

	FUNC4(dsaf_dev);

	FUNC2(dsaf_dev);

	FUNC3(dsaf_dev);

	return 0;
}