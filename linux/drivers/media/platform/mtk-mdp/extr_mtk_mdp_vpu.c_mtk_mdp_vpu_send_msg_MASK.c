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
struct mtk_mdp_vpu {int /*<<< orphan*/  pdev; } ;
struct mtk_mdp_ctx {TYPE_2__* mdp_dev; int /*<<< orphan*/  id; } ;
typedef  enum ipi_id { ____Placeholder_ipi_id } ipi_id ;
struct TYPE_4__ {int /*<<< orphan*/  vpulock; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,void*,int) ; 
 struct mtk_mdp_ctx* FUNC5 (struct mtk_mdp_vpu*) ; 

__attribute__((used)) static int FUNC6(void *msg, int len, struct mtk_mdp_vpu *vpu,
				int id)
{
	struct mtk_mdp_ctx *ctx = FUNC5(vpu);
	int err;

	if (!vpu->pdev) {
		FUNC1(1, "[%d]:vpu pdev is NULL", ctx->id);
		return -EINVAL;
	}

	FUNC2(&ctx->mdp_dev->vpulock);
	err = FUNC4(vpu->pdev, (enum ipi_id)id, msg, len);
	if (err)
		FUNC0(&ctx->mdp_dev->pdev->dev,
			"vpu_ipi_send fail status %d\n", err);
	FUNC3(&ctx->mdp_dev->vpulock);

	return err;
}