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
typedef  scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ size; } ;
struct mvneta_bm_pool {int id; scalar_t__ pkt_size; TYPE_2__ hwbm_pool; int /*<<< orphan*/  type; } ;
struct mvneta_bm {TYPE_1__* pdev; struct mvneta_bm_pool* bm_pools; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_3__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MVNETA_BM_COMMAND_REG ; 
 int /*<<< orphan*/  MVNETA_BM_FREE ; 
 int MVNETA_BM_POOLS_NUM ; 
 int /*<<< orphan*/  MVNETA_BM_POOL_CAP_ALIGN ; 
 scalar_t__ MVNETA_BM_POOL_CAP_DEF ; 
 scalar_t__ MVNETA_BM_POOL_CAP_MAX ; 
 scalar_t__ MVNETA_BM_POOL_CAP_MIN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ MVNETA_BM_START_MASK ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mvneta_bm*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static void FUNC9(struct mvneta_bm *priv)
{
	struct device_node *dn = priv->pdev->dev.of_node;
	struct mvneta_bm_pool *bm_pool;
	char prop[15];
	u32 size;
	int i;

	/* Activate BM unit */
	FUNC6(priv, MVNETA_BM_COMMAND_REG, MVNETA_BM_START_MASK);

	/* Create all pools with maximum size */
	for (i = 0; i < MVNETA_BM_POOLS_NUM; i++) {
		bm_pool = &priv->bm_pools[i];
		bm_pool->id = i;
		bm_pool->type = MVNETA_BM_FREE;

		/* Reset read pointer */
		FUNC6(priv, FUNC2(i), 0);

		/* Reset write pointer */
		FUNC6(priv, FUNC4(i), 0);

		/* Configure pool size according to DT or use default value */
		FUNC8(prop, "pool%d,capacity", i);
		if (FUNC7(dn, prop, &size)) {
			size = MVNETA_BM_POOL_CAP_DEF;
		} else if (size > MVNETA_BM_POOL_CAP_MAX) {
			FUNC5(&priv->pdev->dev,
				 "Illegal pool %d capacity %d, set to %d\n",
				 i, size, MVNETA_BM_POOL_CAP_MAX);
			size = MVNETA_BM_POOL_CAP_MAX;
		} else if (size < MVNETA_BM_POOL_CAP_MIN) {
			FUNC5(&priv->pdev->dev,
				 "Illegal pool %d capacity %d, set to %d\n",
				 i, size, MVNETA_BM_POOL_CAP_MIN);
			size = MVNETA_BM_POOL_CAP_MIN;
		} else if (!FUNC1(size, MVNETA_BM_POOL_CAP_ALIGN)) {
			FUNC5(&priv->pdev->dev,
				 "Illegal pool %d capacity %d, round to %d\n",
				 i, size, FUNC0(size,
				 MVNETA_BM_POOL_CAP_ALIGN));
			size = FUNC0(size, MVNETA_BM_POOL_CAP_ALIGN);
		}
		bm_pool->hwbm_pool.size = size;

		FUNC6(priv, FUNC3(i),
				bm_pool->hwbm_pool.size);

		/* Obtain custom pkt_size from DT */
		FUNC8(prop, "pool%d,pkt-size", i);
		if (FUNC7(dn, prop, &bm_pool->pkt_size))
			bm_pool->pkt_size = 0;
	}
}