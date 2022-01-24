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
struct s5p_mfc_ctx {int /*<<< orphan*/ ** ctrls; int /*<<< orphan*/  ctrl_handler; } ;

/* Variables and functions */
 int NUM_CTRLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct s5p_mfc_ctx *ctx)
{
	int i;

	FUNC0(&ctx->ctrl_handler);
	for (i = 0; i < NUM_CTRLS; i++)
		ctx->ctrls[i] = NULL;
}