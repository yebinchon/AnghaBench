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
struct spa {int /*<<< orphan*/  spa_lock; int /*<<< orphan*/  pe_tree; struct ocxl_process_element* spa_mem; } ;
struct pe_data {scalar_t__ mm; } ;
struct ocxl_process_element {int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; int /*<<< orphan*/  software_state; } ;
struct ocxl_link {int /*<<< orphan*/  platform_data; struct spa* spa; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int SPA_PASID_MAX ; 
 int SPA_PE_MASK ; 
 int SPA_PE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (struct pe_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ocxl_process_element*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 struct pe_data* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct ocxl_process_element*,int,int,int) ; 

int FUNC13(void *link_handle, int pasid)
{
	struct ocxl_link *link = (struct ocxl_link *) link_handle;
	struct spa *spa = link->spa;
	struct ocxl_process_element *pe;
	struct pe_data *pe_data;
	int pe_handle, rc;

	if (pasid > SPA_PASID_MAX)
		return -EINVAL;

	/*
	 * About synchronization with our memory fault handler:
	 *
	 * Before removing the PE, the driver is supposed to have
	 * notified the AFU, which should have cleaned up and make
	 * sure the PASID is no longer in use, including pending
	 * interrupts. However, there's no way to be sure...
	 *
	 * We clear the PE and remove the context from our radix
	 * tree. From that point on, any new interrupt for that
	 * context will fail silently, which is ok. As mentioned
	 * above, that's not expected, but it could happen if the
	 * driver or AFU didn't do the right thing.
	 *
	 * There could still be a bottom half running, but we don't
	 * need to wait/flush, as it is managing a reference count on
	 * the mm it reads from the radix tree.
	 */
	pe_handle = pasid & SPA_PE_MASK;
	pe = spa->spa_mem + pe_handle;

	FUNC8(&spa->spa_lock);

	if (!(FUNC2(pe->software_state) & SPA_PE_VALID)) {
		rc = -EINVAL;
		goto unlock;
	}

	FUNC12(current->pid, spa->spa_mem, pasid,
				FUNC2(pe->pid), FUNC2(pe->tid));

	FUNC5(pe, 0, sizeof(struct ocxl_process_element));
	/*
	 * The barrier makes sure the PE is removed from the SPA
	 * before we clear the NPU context cache below, so that the
	 * old PE cannot be reloaded erroneously.
	 */
	FUNC4();

	/*
	 * hook to platform code
	 * On powerpc, the entry needs to be cleared from the context
	 * cache of the NPU.
	 */
	rc = FUNC10(link->platform_data, pe_handle);
	FUNC1(rc);

	pe_data = FUNC11(&spa->pe_tree, pe_handle);
	if (!pe_data) {
		FUNC0(1, "Couldn't find pe data when removing PE\n");
	} else {
		if (pe_data->mm) {
			FUNC6(pe_data->mm);
			FUNC7(pe_data->mm);
		}
		FUNC3(pe_data, rcu);
	}
unlock:
	FUNC9(&spa->spa_lock);
	return rc;
}