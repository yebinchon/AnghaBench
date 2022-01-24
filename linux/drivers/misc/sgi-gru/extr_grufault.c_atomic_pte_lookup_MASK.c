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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int HPAGE_SHIFT ; 
 int PAGE_SHIFT ; 
 scalar_t__ FUNC0 (struct vm_area_struct*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct vm_area_struct *vma, unsigned long vaddr,
	int write, unsigned long *paddr, int *pageshift)
{
	pgd_t *pgdp;
	p4d_t *p4dp;
	pud_t *pudp;
	pmd_t *pmdp;
	pte_t pte;

	pgdp = FUNC4(vma->vm_mm, vaddr);
	if (FUNC15(FUNC3(*pgdp)))
		goto err;

	p4dp = FUNC2(pgdp, vaddr);
	if (FUNC15(FUNC1(*p4dp)))
		goto err;

	pudp = FUNC14(p4dp, vaddr);
	if (FUNC15(FUNC13(*pudp)))
		goto err;

	pmdp = FUNC7(pudp, vaddr);
	if (FUNC15(FUNC6(*pmdp)))
		goto err;
#ifdef CONFIG_X86_64
	if (unlikely(pmd_large(*pmdp)))
		pte = *(pte_t *) pmdp;
	else
#endif
		pte = *FUNC9(pmdp, vaddr);

	if (FUNC15(!FUNC11(pte) ||
		     (write && (!FUNC12(pte) || !FUNC8(pte)))))
		return 1;

	*paddr = FUNC10(pte) << PAGE_SHIFT;
#ifdef CONFIG_HUGETLB_PAGE
	*pageshift = is_vm_hugetlb_page(vma) ? HPAGE_SHIFT : PAGE_SHIFT;
#else
	*pageshift = PAGE_SHIFT;
#endif
	return 0;

err:
	return 1;
}