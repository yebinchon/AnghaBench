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
struct pnp_dev {int dummy; } ;
struct nvt_dev {TYPE_1__* rdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_wakeup_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvt_dev*) ; 
 struct nvt_dev* FUNC3 (struct pnp_dev*) ; 

__attribute__((used)) static void FUNC4(struct pnp_dev *pdev)
{
	struct nvt_dev *nvt = FUNC3(pdev);

	FUNC0(&nvt->rdev->dev, &dev_attr_wakeup_data);

	FUNC1(nvt);

	/* enable CIR Wake (for IR power-on) */
	FUNC2(nvt);
}