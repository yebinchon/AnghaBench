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
struct TYPE_2__ {struct bdisp_ctx* ctx; } ;
struct bdisp_dev {int /*<<< orphan*/  state; int /*<<< orphan*/  slock; TYPE_1__ m2m; } ;
struct bdisp_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_M2M_SUSPENDED ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bdisp_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct bdisp_dev *bdisp)
{
	struct bdisp_ctx *ctx;
	unsigned long flags;

	FUNC1(&bdisp->slock, flags);
	ctx = bdisp->m2m.ctx;
	bdisp->m2m.ctx = NULL;
	FUNC2(&bdisp->slock, flags);

	if (FUNC3(ST_M2M_SUSPENDED, &bdisp->state))
		FUNC0(ctx, VB2_BUF_STATE_ERROR);

	return 0;
}