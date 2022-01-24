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
struct spa {int /*<<< orphan*/  spa_lock; struct ocxl_process_element* spa_mem; } ;
struct ocxl_process_element {int /*<<< orphan*/  tid; } ;
struct ocxl_link {int /*<<< orphan*/  platform_data; struct spa* spa; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int EINVAL ; 
 int SPA_PASID_MAX ; 
 int SPA_PE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6(void *link_handle, int pasid, __u16 tid)
{
	struct ocxl_link *link = (struct ocxl_link *) link_handle;
	struct spa *spa = link->spa;
	struct ocxl_process_element *pe;
	int pe_handle, rc;

	if (pasid > SPA_PASID_MAX)
		return -EINVAL;

	pe_handle = pasid & SPA_PE_MASK;
	pe = spa->spa_mem + pe_handle;

	FUNC3(&spa->spa_lock);

	pe->tid = FUNC1(tid);

	/*
	 * The barrier makes sure the PE is updated
	 * before we clear the NPU context cache below, so that the
	 * old PE cannot be reloaded erroneously.
	 */
	FUNC2();

	/*
	 * hook to platform code
	 * On powerpc, the entry needs to be cleared from the context
	 * cache of the NPU.
	 */
	rc = FUNC5(link->platform_data, pe_handle);
	FUNC0(rc);

	FUNC4(&spa->spa_lock);
	return rc;
}