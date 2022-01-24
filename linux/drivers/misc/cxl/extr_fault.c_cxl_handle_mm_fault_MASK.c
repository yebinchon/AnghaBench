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
typedef  int /*<<< orphan*/  vm_fault_t ;
typedef  int u64 ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int CXL_PSL_DSISR_An_S ; 
 int DSISR_NOHPTE ; 
 unsigned long HPTE_NOHPTE_UPDATE ; 
 scalar_t__ USER_REGION_ID ; 
 unsigned long _PAGE_PRESENT ; 
 unsigned long _PAGE_PRIVILEGED ; 
 unsigned long _PAGE_READ ; 
 unsigned long _PAGE_WRITE ; 
 int FUNC0 (struct mm_struct*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int,unsigned long,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(struct mm_struct *mm, u64 dsisr, u64 dar)
{
	vm_fault_t flt = 0;
	int result;
	unsigned long access, flags, inv_flags = 0;

	/*
	 * Add the fault handling cpu to task mm cpumask so that we
	 * can do a safe lockless page table walk when inserting the
	 * hash page table entry. This function get called with a
	 * valid mm for user space addresses. Hence using the if (mm)
	 * check is sufficient here.
	 */
	if (mm && !FUNC2(FUNC11(), FUNC7(mm))) {
		FUNC1(FUNC11(), FUNC7(mm));
		/*
		 * We need to make sure we walk the table only after
		 * we update the cpumask. The other side of the barrier
		 * is explained in serialize_against_pte_lookup()
		 */
		FUNC10();
	}
	if ((result = FUNC0(mm, dar, dsisr, &flt))) {
		FUNC8("copro_handle_mm_fault failed: %#x\n", result);
		return result;
	}

	if (!FUNC9()) {
		/*
		 * update_mmu_cache() will not have loaded the hash since current->trap
		 * is not a 0x400 or 0x300, so just call hash_page_mm() here.
		 */
		access = _PAGE_PRESENT | _PAGE_READ;
		if (dsisr & CXL_PSL_DSISR_An_S)
			access |= _PAGE_WRITE;

		if (!mm && (FUNC3(dar) != USER_REGION_ID))
			access |= _PAGE_PRIVILEGED;

		if (dsisr & DSISR_NOHPTE)
			inv_flags |= HPTE_NOHPTE_UPDATE;

		FUNC6(flags);
		FUNC4(mm, dar, access, 0x300, inv_flags);
		FUNC5(flags);
	}
	return 0;
}