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
typedef  unsigned long u32 ;
struct vmballoon {int /*<<< orphan*/  page; int /*<<< orphan*/  batch_page; int /*<<< orphan*/  comm_lock; } ;
typedef  enum vmballoon_page_size_type { ____Placeholder_vmballoon_page_size_type } vmballoon_page_size_type ;
typedef  enum vmballoon_op { ____Placeholder_vmballoon_op } vmballoon_op ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int VMW_BALLOON_2M_PAGE ; 
 unsigned long VMW_BALLOON_CMD_BATCHED_2M_LOCK ; 
 unsigned long VMW_BALLOON_CMD_BATCHED_2M_UNLOCK ; 
 unsigned long VMW_BALLOON_CMD_BATCHED_LOCK ; 
 unsigned long VMW_BALLOON_CMD_BATCHED_UNLOCK ; 
 unsigned long VMW_BALLOON_CMD_LOCK ; 
 unsigned long VMW_BALLOON_CMD_UNLOCK ; 
 unsigned long VMW_BALLOON_ERROR_PPN_INVALID ; 
 int VMW_BALLOON_INFLATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (struct vmballoon*,unsigned long,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  vmw_balloon_batching ; 

__attribute__((used)) static unsigned long FUNC7(struct vmballoon *b,
				       unsigned int num_pages,
				       enum vmballoon_page_size_type page_size,
				       enum vmballoon_op op)
{
	unsigned long cmd, pfn;

	FUNC1(&b->comm_lock);

	if (FUNC3(&vmw_balloon_batching)) {
		if (op == VMW_BALLOON_INFLATE)
			cmd = page_size == VMW_BALLOON_2M_PAGE ?
				VMW_BALLOON_CMD_BATCHED_2M_LOCK :
				VMW_BALLOON_CMD_BATCHED_LOCK;
		else
			cmd = page_size == VMW_BALLOON_2M_PAGE ?
				VMW_BALLOON_CMD_BATCHED_2M_UNLOCK :
				VMW_BALLOON_CMD_BATCHED_UNLOCK;

		pfn = FUNC0(FUNC5(b->batch_page));
	} else {
		cmd = op == VMW_BALLOON_INFLATE ? VMW_BALLOON_CMD_LOCK :
						  VMW_BALLOON_CMD_UNLOCK;
		pfn = FUNC2(b->page);

		/* In non-batching mode, PFNs must fit in 32-bit */
		if (FUNC4(pfn != (u32)pfn))
			return VMW_BALLOON_ERROR_PPN_INVALID;
	}

	return FUNC6(b, cmd, pfn, num_pages);
}