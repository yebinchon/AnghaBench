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
struct vm_area_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct gru_thread_state {int /*<<< orphan*/  ts_ctxlock; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct gru_thread_state* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,struct vm_area_struct*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct gru_thread_state* FUNC5 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 struct vm_area_struct* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct gru_thread_state *FUNC9(unsigned long vaddr)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;
	struct gru_thread_state *gts = FUNC0(-EINVAL);

	FUNC3(&mm->mmap_sem);
	vma = FUNC6(vaddr);
	if (!vma)
		goto err;

	gts = FUNC5(vma, FUNC2(vaddr, vma));
	if (FUNC1(gts))
		goto err;
	FUNC7(&gts->ts_ctxlock);
	FUNC4(&mm->mmap_sem);
	return gts;

err:
	FUNC8(&mm->mmap_sem);
	return gts;
}