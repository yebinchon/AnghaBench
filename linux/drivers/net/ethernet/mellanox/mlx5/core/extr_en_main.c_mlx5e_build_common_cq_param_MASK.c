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
struct mlx5e_priv {TYPE_3__* mdev; } ;
struct mlx5e_cq_param {void* cqc; } ;
struct TYPE_5__ {TYPE_1__* uar; } ;
struct TYPE_6__ {TYPE_2__ priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQE_STRIDE_128_PAD ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  cqe_128_always ; 
 int /*<<< orphan*/  cqe_sz ; 
 int /*<<< orphan*/  uar_page ; 

__attribute__((used)) static void FUNC3(struct mlx5e_priv *priv,
					struct mlx5e_cq_param *param)
{
	void *cqc = param->cqc;

	FUNC1(cqc, cqc, uar_page, priv->mdev->priv.uar->index);
	if (FUNC0(priv->mdev, cqe_128_always) && FUNC2() >= 128)
		FUNC1(cqc, cqc, cqe_sz, CQE_STRIDE_128_PAD);
}