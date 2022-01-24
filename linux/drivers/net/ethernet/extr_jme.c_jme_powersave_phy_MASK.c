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
struct jme_adapter {int reg_pmcs; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PMCS_LFEN ; 
 int PMCS_LREN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_adapter*) ; 

__attribute__((used)) static void
FUNC5(struct jme_adapter *jme)
{
	if (jme->reg_pmcs && FUNC0(&jme->pdev->dev)) {
		FUNC3(jme);
		if (jme->reg_pmcs & (PMCS_LFEN | PMCS_LREN))
			FUNC4(jme);
		FUNC1(jme);
	} else {
		FUNC2(jme);
	}
}