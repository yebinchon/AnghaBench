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
struct dpaa2_eth_priv {int /*<<< orphan*/  bpid; } ;
struct TYPE_2__ {scalar_t__ drop_cnt; int /*<<< orphan*/ * drop_bufs; } ;
struct dpaa2_eth_channel {TYPE_1__ xdp; int /*<<< orphan*/  buf_count; int /*<<< orphan*/  dpio; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ DPAA2_ETH_BUFS_PER_CMD ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa2_eth_priv*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct dpaa2_eth_priv *priv,
			    struct dpaa2_eth_channel *ch,
			    dma_addr_t addr)
{
	int err;

	ch->xdp.drop_bufs[ch->xdp.drop_cnt++] = addr;
	if (ch->xdp.drop_cnt < DPAA2_ETH_BUFS_PER_CMD)
		return;

	while ((err = FUNC1(ch->dpio, priv->bpid,
					       ch->xdp.drop_bufs,
					       ch->xdp.drop_cnt)) == -EBUSY)
		FUNC0();

	if (err) {
		FUNC2(priv, ch->xdp.drop_bufs, ch->xdp.drop_cnt);
		ch->buf_count -= ch->xdp.drop_cnt;
	}

	ch->xdp.drop_cnt = 0;
}