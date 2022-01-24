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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct spa {int /*<<< orphan*/  spa_lock; struct ocxl_process_element* spa_mem; int /*<<< orphan*/  pe_tree; } ;
struct pe_data {void (* xsl_err_cb ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;void* xsl_err_data; struct mm_struct* mm; } ;
struct ocxl_process_element {void* software_state; void* amr; void* tid; void* pid; void* lpid; void* config_state; } ;
struct ocxl_link {struct spa* spa; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPA_PASID_MAX ; 
 int SPA_PE_MASK ; 
 int /*<<< orphan*/  SPA_PE_VALID ; 
 int /*<<< orphan*/  SPRN_LPID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct pe_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ocxl_process_element*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,struct pe_data*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct ocxl_process_element*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(void *link_handle, int pasid, u32 pidr, u32 tidr,
		u64 amr, struct mm_struct *mm,
		void (*xsl_err_cb)(void *data, u64 addr, u64 dsisr),
		void *xsl_err_data)
{
	struct ocxl_link *link = (struct ocxl_link *) link_handle;
	struct spa *spa = link->spa;
	struct ocxl_process_element *pe;
	int pe_handle, rc = 0;
	struct pe_data *pe_data;

	FUNC0(sizeof(struct ocxl_process_element) != 128);
	if (pasid > SPA_PASID_MAX)
		return -EINVAL;

	FUNC10(&spa->spa_lock);
	pe_handle = pasid & SPA_PE_MASK;
	pe = spa->spa_mem + pe_handle;

	if (pe->software_state) {
		rc = -EBUSY;
		goto unlock;
	}

	pe_data = FUNC4(sizeof(*pe_data), GFP_KERNEL);
	if (!pe_data) {
		rc = -ENOMEM;
		goto unlock;
	}

	pe_data->mm = mm;
	pe_data->xsl_err_cb = xsl_err_cb;
	pe_data->xsl_err_data = xsl_err_data;

	FUNC6(pe, 0, sizeof(struct ocxl_process_element));
	pe->config_state = FUNC3(FUNC1(pidr == 0));
	pe->lpid = FUNC2(FUNC7(SPRN_LPID));
	pe->pid = FUNC2(pidr);
	pe->tid = FUNC2(tidr);
	pe->amr = FUNC3(amr);
	pe->software_state = FUNC2(SPA_PE_VALID);

	/*
	 * For user contexts, register a copro so that TLBIs are seen
	 * by the nest MMU. If we have a kernel context, TLBIs are
	 * already global.
	 */
	if (mm)
		FUNC8(mm);
	/*
	 * Barrier is to make sure PE is visible in the SPA before it
	 * is used by the device. It also helps with the global TLBI
	 * invalidation
	 */
	FUNC5();
	FUNC12(&spa->pe_tree, pe_handle, pe_data);

	/*
	 * The mm must stay valid for as long as the device uses it. We
	 * lower the count when the context is removed from the SPA.
	 *
	 * We grab mm_count (and not mm_users), as we don't want to
	 * end up in a circular dependency if a process mmaps its
	 * mmio, therefore incrementing the file ref count when
	 * calling mmap(), and forgets to unmap before exiting. In
	 * that scenario, when the kernel handles the death of the
	 * process, the file is not cleaned because unmap was not
	 * called, and the mm wouldn't be freed because we would still
	 * have a reference on mm_users. Incrementing mm_count solves
	 * the problem.
	 */
	if (mm)
		FUNC9(mm);
	FUNC13(current->pid, spa->spa_mem, pasid, pidr, tidr);
unlock:
	FUNC11(&spa->spa_lock);
	return rc;
}