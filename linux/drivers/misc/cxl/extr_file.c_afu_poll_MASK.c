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
struct poll_table_struct {int dummy; } ;
struct file {struct cxl_context* private_data; } ;
struct cxl_context {scalar_t__ status; int /*<<< orphan*/  pe; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; } ;
typedef  int __poll_t ;

/* Variables and functions */
 scalar_t__ CLOSED ; 
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 scalar_t__ FUNC0 (struct cxl_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__poll_t FUNC5(struct file *file, struct poll_table_struct *poll)
{
	struct cxl_context *ctx = file->private_data;
	__poll_t mask = 0;
	unsigned long flags;


	FUNC1(file, &ctx->wq, poll);

	FUNC2("afu_poll wait done pe: %i\n", ctx->pe);

	FUNC3(&ctx->lock, flags);
	if (FUNC0(ctx))
		mask |= EPOLLIN | EPOLLRDNORM;
	else if (ctx->status == CLOSED)
		/* Only error on closed when there are no futher events pending
		 */
		mask |= EPOLLERR;
	FUNC4(&ctx->lock, flags);

	FUNC2("afu_poll pe: %i returning %#x\n", ctx->pe, mask);

	return mask;
}