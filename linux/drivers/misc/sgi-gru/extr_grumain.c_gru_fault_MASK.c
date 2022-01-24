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
struct vm_fault {unsigned long address; struct vm_area_struct* vma; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; } ;
struct gru_thread_state {unsigned long ts_steal_jiffies; int /*<<< orphan*/  ts_ctxlock; int /*<<< orphan*/  ts_ctxnum; int /*<<< orphan*/  ts_gru; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRU_ASSIGN_DELAY ; 
 int GRU_GSEG_PAGESIZE ; 
 unsigned long GRU_STEAL_DELAY ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,struct vm_area_struct*) ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC3 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 struct gru_thread_state* FUNC6 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  grudev ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  load_user_context ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nopfn ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct vm_area_struct*,unsigned long,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (unsigned long,int /*<<< orphan*/ ) ; 

vm_fault_t FUNC18(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct gru_thread_state *gts;
	unsigned long paddr, vaddr;
	unsigned long expires;

	vaddr = vmf->address;
	FUNC5(grudev, "vma %p, vaddr 0x%lx (0x%lx)\n",
		vma, vaddr, FUNC0(vaddr));
	FUNC1(nopfn);

	/* The following check ensures vaddr is a valid address in the VMA */
	gts = FUNC6(vma, FUNC2(vaddr, vma));
	if (!gts)
		return VM_FAULT_SIGBUS;

again:
	FUNC10(&gts->ts_ctxlock);
	FUNC12();

	FUNC4(gts);

	if (!gts->ts_gru) {
		FUNC1(load_user_context);
		if (!FUNC3(gts)) {
			FUNC13();
			FUNC11(&gts->ts_ctxlock);
			FUNC16(TASK_INTERRUPTIBLE);
			FUNC15(GRU_ASSIGN_DELAY);  /* true hack ZZZ */
			expires = gts->ts_steal_jiffies + GRU_STEAL_DELAY;
			if (FUNC17(expires, jiffies))
				FUNC8(gts);
			goto again;
		}
		FUNC7(gts);
		paddr = FUNC9(gts->ts_gru, gts->ts_ctxnum);
		FUNC14(vma, vaddr & ~(GRU_GSEG_PAGESIZE - 1),
				paddr >> PAGE_SHIFT, GRU_GSEG_PAGESIZE,
				vma->vm_page_prot);
	}

	FUNC13();
	FUNC11(&gts->ts_ctxlock);

	return VM_FAULT_NOPAGE;
}