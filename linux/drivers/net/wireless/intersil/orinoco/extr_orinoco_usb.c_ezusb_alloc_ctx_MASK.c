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
typedef  void* u16 ;
struct request_context {int /*<<< orphan*/  timer; int /*<<< orphan*/  done; int /*<<< orphan*/  refcount; void* in_rid; void* out_rid; int /*<<< orphan*/  state; struct ezusb_priv* upriv; struct request_context* buf; int /*<<< orphan*/  outurb; } ;
struct ezusb_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_BUF_SIZE ; 
 int /*<<< orphan*/  EZUSB_CTX_START ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ezusb_request_timerfn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request_context*) ; 
 struct request_context* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct request_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct request_context *FUNC7(struct ezusb_priv *upriv,
					       u16 out_rid, u16 in_rid)
{
	struct request_context *ctx;

	ctx = FUNC3(sizeof(*ctx), GFP_ATOMIC);
	if (!ctx)
		return NULL;

	ctx->buf = FUNC2(BULK_BUF_SIZE, GFP_ATOMIC);
	if (!ctx->buf) {
		FUNC1(ctx);
		return NULL;
	}
	ctx->outurb = FUNC6(0, GFP_ATOMIC);
	if (!ctx->outurb) {
		FUNC1(ctx->buf);
		FUNC1(ctx);
		return NULL;
	}

	ctx->upriv = upriv;
	ctx->state = EZUSB_CTX_START;
	ctx->out_rid = out_rid;
	ctx->in_rid = in_rid;

	FUNC4(&ctx->refcount, 1);
	FUNC0(&ctx->done);

	FUNC5(&ctx->timer, ezusb_request_timerfn, 0);
	return ctx;
}