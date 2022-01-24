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
struct vmci_ctx {int /*<<< orphan*/  lock; struct page* notify_page; int /*<<< orphan*/ * notify; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ctx_dummy_notify ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct vmci_ctx *context)
{
	struct page *notify_page;

	FUNC2(&context->lock);

	notify_page = context->notify_page;
	context->notify = &ctx_dummy_notify;
	context->notify_page = NULL;

	FUNC3(&context->lock);

	if (notify_page) {
		FUNC0(notify_page);
		FUNC1(notify_page);
	}
}