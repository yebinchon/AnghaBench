#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct skb_shared_info {int dummy; } ;
struct mvneta_port {int id; int /*<<< orphan*/  dev; int /*<<< orphan*/ * bm_priv; struct mvneta_bm_pool* pool_short; struct mvneta_bm_pool* pool_long; } ;
struct hwbm_pool {int size; scalar_t__ frag_size; scalar_t__ buf_num; } ;
struct mvneta_bm_pool {int buf_size; int /*<<< orphan*/  id; int /*<<< orphan*/  pkt_size; struct hwbm_pool hwbm_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVNETA_ACC_MODE ; 
 int /*<<< orphan*/  MVNETA_ACC_MODE_EXT1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (struct hwbm_pool*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mvneta_bm_pool*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mvneta_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct mvneta_bm_pool*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mvneta_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC10(struct mvneta_port *pp, int mtu)
{
	struct mvneta_bm_pool *bm_pool = pp->pool_long;
	struct hwbm_pool *hwbm_pool = &bm_pool->hwbm_pool;
	int num;

	/* Release all buffers from long pool */
	FUNC5(pp->bm_priv, bm_pool, 1 << pp->id);
	if (hwbm_pool->buf_num) {
		FUNC3(1, "cannot free all buffers in pool %d\n",
		     bm_pool->id);
		goto bm_mtu_err;
	}

	bm_pool->pkt_size = FUNC1(mtu);
	bm_pool->buf_size = FUNC0(bm_pool->pkt_size);
	hwbm_pool->frag_size = FUNC2(sizeof(struct skb_shared_info)) +
			FUNC2(FUNC0(bm_pool->pkt_size));

	/* Fill entire long pool */
	num = FUNC4(hwbm_pool, hwbm_pool->size);
	if (num != hwbm_pool->size) {
		FUNC3(1, "pool %d: %d of %d allocated\n",
		     bm_pool->id, num, hwbm_pool->size);
		goto bm_mtu_err;
	}
	FUNC6(pp, bm_pool->buf_size, bm_pool->id);

	return;

bm_mtu_err:
	FUNC7(pp->bm_priv, pp->pool_long, 1 << pp->id);
	FUNC7(pp->bm_priv, pp->pool_short, 1 << pp->id);

	pp->bm_priv = NULL;
	FUNC8(pp, MVNETA_ACC_MODE, MVNETA_ACC_MODE_EXT1);
	FUNC9(pp->dev, "fail to update MTU, fall back to software BM\n");
}