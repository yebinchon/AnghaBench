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
struct mtk_mdp_dev {int /*<<< orphan*/ * comp; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mtk_mdp_dev *mdp)
{
	struct device *dev = &mdp->pdev->dev;
	int i;

	for (i = 0; i < FUNC0(mdp->comp); i++)
		FUNC1(dev, mdp->comp[i]);
}