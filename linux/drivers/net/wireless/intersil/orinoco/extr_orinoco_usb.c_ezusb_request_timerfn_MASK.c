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
struct timer_list {int dummy; } ;
struct request_context {int killed; int /*<<< orphan*/  refcount; TYPE_2__* outurb; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {TYPE_1__* dev; int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  EZUSB_CTX_REQ_TIMEOUT ; 
 int /*<<< orphan*/  EZUSB_CTX_RESP_TIMEOUT ; 
 int /*<<< orphan*/  URB_ASYNC_UNLINK ; 
 struct request_context* ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_context*) ; 
 struct request_context* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct request_context *ctx = FUNC3(ctx, t, timer);

	ctx->outurb->transfer_flags |= URB_ASYNC_UNLINK;
	if (FUNC5(ctx->outurb) == -EINPROGRESS) {
		ctx->state = EZUSB_CTX_REQ_TIMEOUT;
	} else {
		ctx->state = EZUSB_CTX_RESP_TIMEOUT;
		FUNC0(&ctx->outurb->dev->dev, "couldn't unlink\n");
		FUNC4(&ctx->refcount);
		ctx->killed = 1;
		FUNC1(ctx);
		FUNC2(ctx);
	}
}