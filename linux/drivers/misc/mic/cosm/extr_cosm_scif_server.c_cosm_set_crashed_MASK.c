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
struct cosm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIC_CRASHED ; 
 int /*<<< orphan*/  FUNC0 (struct cosm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cosm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC3(struct cosm_device *cdev)
{
	FUNC2(&cdev->dev, "node alive timeout\n");
	FUNC0(cdev, MIC_CRASHED);
	FUNC1(cdev);
}