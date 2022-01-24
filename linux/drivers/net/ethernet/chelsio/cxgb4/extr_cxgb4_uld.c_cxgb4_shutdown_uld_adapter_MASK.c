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
struct adapter {int flags; TYPE_1__* uld; } ;
typedef  enum cxgb4_uld { ____Placeholder_cxgb4_uld } cxgb4_uld ;
struct TYPE_2__ {int /*<<< orphan*/ * add; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 int CXGB4_FULL_INIT_DONE ; 
 int CXGB4_USING_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int) ; 

__attribute__((used)) static void FUNC5(struct adapter *adap, enum cxgb4_uld type)
{
	if (adap->uld[type].handle) {
		adap->uld[type].handle = NULL;
		adap->uld[type].add = NULL;
		FUNC4(adap, type);

		if (adap->flags & CXGB4_FULL_INIT_DONE)
			FUNC3(adap, type);

		if (adap->flags & CXGB4_USING_MSIX)
			FUNC0(adap, type);

		FUNC2(adap, type);
		FUNC1(adap, type);
	}
}