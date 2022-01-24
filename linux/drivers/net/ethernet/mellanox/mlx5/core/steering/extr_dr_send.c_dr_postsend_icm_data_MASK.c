#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  uintptr_t u32 ;
struct TYPE_6__ {uintptr_t addr; int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; } ;
struct postsend_info {TYPE_2__ write; } ;
struct mlx5dr_send_ring {int tx_head; int signal_th; int max_post_send_size; int /*<<< orphan*/  qp; TYPE_4__* mr; scalar_t__ buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  max_inline_size; } ;
struct mlx5dr_domain {struct mlx5dr_send_ring* send_ring; TYPE_1__ info; } ;
struct TYPE_7__ {int /*<<< orphan*/  key; } ;
struct TYPE_8__ {TYPE_3__ mkey; scalar_t__ dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_send_ring*,struct postsend_info*) ; 
 int FUNC1 (struct mlx5dr_domain*,struct mlx5dr_send_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct postsend_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlx5dr_domain *dmn,
				struct postsend_info *send_info)
{
	struct mlx5dr_send_ring *send_ring = dmn->send_ring;
	u32 buff_offset;
	int ret;

	ret = FUNC1(dmn, send_ring);
	if (ret)
		return ret;

	if (send_info->write.length > dmn->info.max_inline_size) {
		buff_offset = (send_ring->tx_head &
			       (dmn->send_ring->signal_th - 1)) *
			send_ring->max_post_send_size;
		/* Copy to ring mr */
		FUNC3(send_ring->buf + buff_offset,
		       (void *)(uintptr_t)send_info->write.addr,
		       send_info->write.length);
		send_info->write.addr = (uintptr_t)send_ring->mr->dma_addr + buff_offset;
		send_info->write.lkey = send_ring->mr->mkey.key;
	}

	send_ring->tx_head++;
	FUNC0(send_ring, send_info);
	FUNC2(send_ring->qp, send_info);

	return 0;
}