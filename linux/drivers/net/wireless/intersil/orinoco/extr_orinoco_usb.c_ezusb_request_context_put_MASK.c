#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  done; } ;
struct request_context {struct request_context* buf; TYPE_2__* outurb; int /*<<< orphan*/  timer; TYPE_1__ done; int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct request_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct request_context *ctx)
{
	if (!FUNC3(&ctx->refcount))
		return;

	FUNC1(!ctx->done.done);
	FUNC0(ctx->outurb->status == -EINPROGRESS);
	FUNC0(FUNC4(&ctx->timer));
	FUNC5(ctx->outurb);
	FUNC2(ctx->buf);
	FUNC2(ctx);
}