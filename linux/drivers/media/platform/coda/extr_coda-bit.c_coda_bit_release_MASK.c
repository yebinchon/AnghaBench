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
struct coda_ctx {int /*<<< orphan*/  buffer_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct coda_ctx *ctx)
{
	FUNC3(&ctx->buffer_mutex);
	FUNC2(ctx);
	FUNC1(ctx);
	FUNC0(ctx);
	FUNC4(&ctx->buffer_mutex);
}