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
struct cxgb4_lld_info {int dummy; } ;
struct adapter {int flags; TYPE_1__* uld; int /*<<< orphan*/  pdev_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* state_change ) (void*,int /*<<< orphan*/ ) ;void* handle; int /*<<< orphan*/  name; void* (* add ) (struct cxgb4_lld_info*) ;} ;

/* Variables and functions */
 int CXGB4_FULL_INIT_DONE ; 
 int /*<<< orphan*/  CXGB4_STATE_UP ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (struct cxgb4_lld_info*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,struct cxgb4_lld_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,unsigned int,struct cxgb4_lld_info*) ; 

__attribute__((used)) static int FUNC8(struct adapter *adap, unsigned int uld)
{
	struct cxgb4_lld_info lli;
	void *handle;

	FUNC6(adap, &lli);
	FUNC7(adap, uld, &lli);

	handle = adap->uld[uld].add(&lli);
	if (FUNC0(handle)) {
		FUNC2(adap->pdev_dev,
			 "could not attach to the %s driver, error %ld\n",
			 adap->uld[uld].name, FUNC1(handle));
		return FUNC1(handle);
	}

	adap->uld[uld].handle = handle;
	FUNC5();

	if (adap->flags & CXGB4_FULL_INIT_DONE)
		adap->uld[uld].state_change(handle, CXGB4_STATE_UP);

	return 0;
}