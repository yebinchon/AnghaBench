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
typedef  scalar_t__ u64 ;
struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct vm_area_struct* vm_next; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; struct vm_area_struct* mmap; } ;
struct cxl_context {int /*<<< orphan*/  pid; } ;
struct copro_slb {scalar_t__ esid; int /*<<< orphan*/  vsid; } ;

/* Variables and functions */
 int FUNC0 (struct mm_struct*,scalar_t__,struct copro_slb*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_context*,struct copro_slb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mm_struct* FUNC3 (struct cxl_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct cxl_context *ctx)
{
	u64 ea, last_esid = 0;
	struct copro_slb slb;
	struct vm_area_struct *vma;
	int rc;
	struct mm_struct *mm;

	mm = FUNC3(ctx);
	if (mm == NULL) {
		FUNC7("cxl_prefault_vm unable to get mm %i\n",
			 FUNC6(ctx->pid));
		return;
	}

	FUNC2(&mm->mmap_sem);
	for (vma = mm->mmap; vma; vma = vma->vm_next) {
		for (ea = vma->vm_start; ea < vma->vm_end;
				ea = FUNC5(ea, slb.vsid)) {
			rc = FUNC0(mm, ea, &slb);
			if (rc)
				continue;

			if (last_esid == slb.esid)
				continue;

			FUNC1(ctx, &slb);
			last_esid = slb.esid;
		}
	}
	FUNC8(&mm->mmap_sem);

	FUNC4(mm);
}