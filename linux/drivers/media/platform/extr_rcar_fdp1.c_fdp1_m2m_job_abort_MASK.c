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
struct fdp1_ctx {int aborting; int /*<<< orphan*/  fdp1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FD1_CTL_SGCMD ; 
 int /*<<< orphan*/  FD1_CTL_SRESET ; 
 int /*<<< orphan*/  FD1_CTL_SRESET_SRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *priv)
{
	struct fdp1_ctx *ctx = priv;

	FUNC0(ctx->fdp1, "+\n");

	/* Will cancel the transaction in the next interrupt handler */
	ctx->aborting = 1;

	/* Immediate abort sequence */
	FUNC1(ctx->fdp1, 0, FD1_CTL_SGCMD);
	FUNC1(ctx->fdp1, FD1_CTL_SRESET_SRST, FD1_CTL_SRESET);
}