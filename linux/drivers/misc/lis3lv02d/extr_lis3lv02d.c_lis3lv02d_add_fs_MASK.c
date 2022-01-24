#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lis3lv02d {TYPE_2__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  lis3lv02d_attribute_group ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct lis3lv02d*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct lis3lv02d *lis3)
{
	lis3->pdev = FUNC2(DRIVER_NAME, -1, NULL, 0);
	if (FUNC0(lis3->pdev))
		return FUNC1(lis3->pdev);

	FUNC3(lis3->pdev, lis3);
	return FUNC4(&lis3->pdev->dev.kobj, &lis3lv02d_attribute_group);
}