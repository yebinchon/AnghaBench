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
struct TYPE_3__ {int /*<<< orphan*/  last_ctx; } ;
struct hva_dev {TYPE_1__ dbg; } ;
struct TYPE_4__ {int /*<<< orphan*/  debugfs_entry; } ;
struct hva_ctx {int flags; TYPE_2__ dbg; struct hva_dev* hva_dev; } ;

/* Variables and functions */
 int HVA_FLAG_STREAMINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hva_ctx*,int) ; 

void FUNC2(struct hva_ctx *ctx)
{
	struct hva_dev *hva = ctx->hva_dev;

	if (ctx->flags & HVA_FLAG_STREAMINFO)
		/* save context before removing */
		FUNC1(&hva->dbg.last_ctx, ctx, sizeof(*ctx));

	FUNC0(ctx->dbg.debugfs_entry);
}