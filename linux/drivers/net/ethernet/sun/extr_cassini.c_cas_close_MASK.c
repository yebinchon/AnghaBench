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
struct net_device {int dummy; } ;
struct cas {int /*<<< orphan*/  pm_mutex; TYPE_1__* pdev; scalar_t__ opened; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cas*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*) ; 
 int /*<<< orphan*/  FUNC2 (struct cas*) ; 
 int /*<<< orphan*/  FUNC3 (struct cas*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct cas*) ; 
 int /*<<< orphan*/  FUNC5 (struct cas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cas*) ; 
 int /*<<< orphan*/  FUNC7 (struct cas*) ; 
 int /*<<< orphan*/  FUNC8 (struct cas*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct cas* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev)
{
	unsigned long flags;
	struct cas *cp = FUNC13(dev);

#ifdef USE_NAPI
	napi_disable(&cp->napi);
#endif
	/* Make sure we don't get distracted by suspend/resume */
	FUNC10(&cp->pm_mutex);

	FUNC14(dev);

	/* Stop traffic, mark us closed */
	FUNC3(cp, flags);
	cp->opened = 0;
	FUNC5(cp, 0);
	FUNC4(cp);
	FUNC0(cp, NULL);
	FUNC1(cp);
	FUNC8(cp, flags);

	FUNC9(cp->pdev->irq, (void *) dev);
	FUNC6(cp);
	FUNC2(cp);
	FUNC7(cp);
	FUNC11(&cp->pm_mutex);
	return 0;
}