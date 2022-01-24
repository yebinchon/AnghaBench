#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct mlx5e_wqe_frag_info {scalar_t__ offset; TYPE_2__* di; } ;
struct mlx5e_rx_wqe_cyc {TYPE_1__* data; } ;
struct TYPE_8__ {scalar_t__ headroom; } ;
struct TYPE_10__ {int num_frags; } ;
struct TYPE_9__ {TYPE_5__ info; } ;
struct mlx5e_rq {TYPE_3__ buff; TYPE_4__ wqe; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct mlx5e_wqe_frag_info* FUNC1 (struct mlx5e_rq*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5e_rq*,struct mlx5e_wqe_frag_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_rq*,struct mlx5e_wqe_frag_info*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct mlx5e_rq *rq, struct mlx5e_rx_wqe_cyc *wqe,
			      u16 ix)
{
	struct mlx5e_wqe_frag_info *frag = FUNC1(rq, ix);
	int err;
	int i;

	for (i = 0; i < rq->wqe.info.num_frags; i++, frag++) {
		err = FUNC2(rq, frag);
		if (FUNC4(err))
			goto free_frags;

		wqe->data[i].addr = FUNC0(frag->di->addr +
						frag->offset + rq->buff.headroom);
	}

	return 0;

free_frags:
	while (--i >= 0)
		FUNC3(rq, --frag, true);

	return err;
}