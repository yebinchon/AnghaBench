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
struct coda_ctx {int aborting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct coda_ctx*,char*) ; 

__attribute__((used)) static void FUNC1(void *priv)
{
	struct coda_ctx *ctx = priv;

	ctx->aborting = 1;

	FUNC0(1, ctx, "job abort\n");
}