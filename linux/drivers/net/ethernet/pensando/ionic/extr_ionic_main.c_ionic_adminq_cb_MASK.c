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
struct ionic_queue {TYPE_1__* lif; } ;
struct ionic_desc_info {int dummy; } ;
struct ionic_cq_info {struct ionic_admin_comp* cq_desc; } ;
struct ionic_admin_ctx {int /*<<< orphan*/  work; int /*<<< orphan*/  comp; } ;
struct ionic_admin_comp {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {TYPE_2__* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ionic_admin_comp*,int) ; 

__attribute__((used)) static void FUNC4(struct ionic_queue *q,
			    struct ionic_desc_info *desc_info,
			    struct ionic_cq_info *cq_info, void *cb_arg)
{
	struct ionic_admin_ctx *ctx = cb_arg;
	struct ionic_admin_comp *comp;
	struct device *dev;

	if (!ctx)
		return;

	comp = cq_info->cq_desc;
	dev = &q->lif->netdev->dev;

	FUNC3(&ctx->comp, comp, sizeof(*comp));

	FUNC1(dev, "comp admin queue command:\n");
	FUNC2("comp ", DUMP_PREFIX_OFFSET, 16, 1,
			 &ctx->comp, sizeof(ctx->comp), true);

	FUNC0(&ctx->work);
}