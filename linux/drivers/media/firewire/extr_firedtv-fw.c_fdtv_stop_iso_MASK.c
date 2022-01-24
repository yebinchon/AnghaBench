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
struct firedtv {struct fdtv_ir_context* ir_context; } ;
struct fdtv_ir_context {int /*<<< orphan*/  context; int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fdtv_ir_context*) ; 

void FUNC5(struct firedtv *fdtv)
{
	struct fdtv_ir_context *ctx = fdtv->ir_context;

	FUNC3(ctx->context);
	FUNC1(&ctx->buffer, FUNC0(fdtv)->card);
	FUNC2(ctx->context);
	FUNC4(ctx);
}