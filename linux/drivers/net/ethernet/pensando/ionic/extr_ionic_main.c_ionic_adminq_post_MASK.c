#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ionic_queue {TYPE_1__* head; } ;
struct ionic_lif {int /*<<< orphan*/  adminq_lock; TYPE_2__* netdev; TYPE_3__* adminqcq; } ;
struct ionic_admin_ctx {int /*<<< orphan*/  cmd; } ;
struct TYPE_6__ {struct ionic_queue q; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ionic_adminq_cb ; 
 int /*<<< orphan*/  FUNC4 (struct ionic_queue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ionic_queue*,int,int /*<<< orphan*/ ,struct ionic_admin_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ionic_lif *lif, struct ionic_admin_ctx *ctx)
{
	struct ionic_queue *adminq = &lif->adminqcq->q;
	int err = 0;

	FUNC0(FUNC3());

	FUNC7(&lif->adminq_lock);
	if (!FUNC4(adminq, 1)) {
		err = -ENOSPC;
		goto err_out;
	}

	FUNC6(adminq->head->desc, &ctx->cmd, sizeof(ctx->cmd));

	FUNC1(&lif->netdev->dev, "post admin queue command:\n");
	FUNC2("cmd ", DUMP_PREFIX_OFFSET, 16, 1,
			 &ctx->cmd, sizeof(ctx->cmd), true);

	FUNC5(adminq, true, ionic_adminq_cb, ctx);

err_out:
	FUNC8(&lif->adminq_lock);

	return err;
}