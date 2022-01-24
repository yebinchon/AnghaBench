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
struct ath10k_ce_pipe {TYPE_1__* ops; struct ath10k* ar; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; } ;
struct ath10k {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int (* ce_rx_post_buf ) (struct ath10k_ce_pipe*,void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct ath10k_ce* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ath10k_ce_pipe*,void*,int /*<<< orphan*/ ) ; 

int FUNC4(struct ath10k_ce_pipe *pipe, void *ctx,
			  dma_addr_t paddr)
{
	struct ath10k *ar = pipe->ar;
	struct ath10k_ce *ce = FUNC0(ar);
	int ret;

	FUNC1(&ce->ce_lock);
	ret = pipe->ops->ce_rx_post_buf(pipe, ctx, paddr);
	FUNC2(&ce->ce_lock);

	return ret;
}