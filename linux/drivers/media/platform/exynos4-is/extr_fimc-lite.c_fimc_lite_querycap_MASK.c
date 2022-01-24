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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct fimc_lite {TYPE_1__* pdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIMC_LITE_DRV_NAME ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct fimc_lite* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
					struct v4l2_capability *cap)
{
	struct fimc_lite *fimc = FUNC3(file);

	FUNC2(cap->driver, FIMC_LITE_DRV_NAME, sizeof(cap->driver));
	FUNC2(cap->card, FIMC_LITE_DRV_NAME, sizeof(cap->card));
	FUNC1(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
					FUNC0(&fimc->pdev->dev));
	return 0;
}