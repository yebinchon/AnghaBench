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
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FOLL_WRITE ; 
 int HPAGE_SHIFT ; 
 int PAGE_SHIFT ; 
 scalar_t__ FUNC0 (unsigned long,int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct vm_area_struct*) ; 
 unsigned long FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct vm_area_struct *vma,
				 unsigned long vaddr, int write,
				 unsigned long *paddr, int *pageshift)
{
	struct page *page;

#ifdef CONFIG_HUGETLB_PAGE
	*pageshift = is_vm_hugetlb_page(vma) ? HPAGE_SHIFT : PAGE_SHIFT;
#else
	*pageshift = PAGE_SHIFT;
#endif
	if (FUNC0(vaddr, 1, write ? FOLL_WRITE : 0, &page, NULL) <= 0)
		return -EFAULT;
	*paddr = FUNC2(page);
	FUNC3(page);
	return 0;
}