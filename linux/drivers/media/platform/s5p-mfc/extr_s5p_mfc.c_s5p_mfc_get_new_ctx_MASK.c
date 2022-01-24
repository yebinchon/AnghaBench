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
struct s5p_mfc_dev {int curr_ctx; int /*<<< orphan*/  condlock; int /*<<< orphan*/  ctx_work_bits; } ;

/* Variables and functions */
 int EAGAIN ; 
 int MFC_NUM_CONTEXTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

int FUNC3(struct s5p_mfc_dev *dev)
{
	unsigned long flags;
	int ctx;

	FUNC0(&dev->condlock, flags);
	ctx = dev->curr_ctx;
	do {
		ctx = (ctx + 1) % MFC_NUM_CONTEXTS;
		if (ctx == dev->curr_ctx) {
			if (!FUNC2(ctx, &dev->ctx_work_bits))
				ctx = -EAGAIN;
			break;
		}
	} while (!FUNC2(ctx, &dev->ctx_work_bits));
	FUNC1(&dev->condlock, flags);

	return ctx;
}