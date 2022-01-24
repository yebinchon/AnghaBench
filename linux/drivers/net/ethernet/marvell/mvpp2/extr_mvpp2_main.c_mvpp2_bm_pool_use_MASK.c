#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mvpp2_port {unsigned int nrxqs; TYPE_4__* priv; TYPE_2__* dev; } ;
struct mvpp2_bm_pool {int pkt_size; int buf_num; int /*<<< orphan*/  id; scalar_t__ frag_size; } ;
struct TYPE_10__ {scalar_t__ percpu_pools; struct mvpp2_bm_pool* bm_pools; } ;
struct TYPE_9__ {int buf_num; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;

/* Variables and functions */
 size_t MVPP2_BM_LONG ; 
 unsigned int MVPP2_BM_POOLS_NUM ; 
 size_t MVPP2_BM_SHORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MVPP2_SKB_SHINFO_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct mvpp2_port*,struct mvpp2_bm_pool*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,struct mvpp2_bm_pool*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,struct mvpp2_bm_pool*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*) ; 
 TYPE_3__* mvpp2_pools ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,unsigned int) ; 

__attribute__((used)) static struct mvpp2_bm_pool *
FUNC8(struct mvpp2_port *port, unsigned pool, int pkt_size)
{
	struct mvpp2_bm_pool *new_pool = &port->priv->bm_pools[pool];
	int num;

	if ((port->priv->percpu_pools && pool > FUNC6(port->priv) * 2) ||
	    (!port->priv->percpu_pools && pool >= MVPP2_BM_POOLS_NUM)) {
		FUNC7(port->dev, "Invalid pool %d\n", pool);
		return NULL;
	}

	/* Allocate buffers in case BM pool is used as long pool, but packet
	 * size doesn't match MTU or BM pool hasn't being used yet
	 */
	if (new_pool->pkt_size == 0) {
		int pkts_num;

		/* Set default buffer number or free all the buffers in case
		 * the pool is not empty
		 */
		pkts_num = new_pool->buf_num;
		if (pkts_num == 0) {
			if (port->priv->percpu_pools) {
				if (pool < port->nrxqs)
					pkts_num = mvpp2_pools[MVPP2_BM_SHORT].buf_num;
				else
					pkts_num = mvpp2_pools[MVPP2_BM_LONG].buf_num;
			} else {
				pkts_num = mvpp2_pools[pool].buf_num;
			}
		} else {
			FUNC4(port->dev->dev.parent,
					   port->priv, new_pool, pkts_num);
		}

		new_pool->pkt_size = pkt_size;
		new_pool->frag_size =
			FUNC1(FUNC0(pkt_size)) +
			MVPP2_SKB_SHINFO_SIZE;

		/* Allocate buffers for this pool */
		num = FUNC3(port, new_pool, pkts_num);
		if (num != pkts_num) {
			FUNC2(1, "pool %d: %d of %d allocated\n",
			     new_pool->id, num, pkts_num);
			return NULL;
		}
	}

	FUNC5(port->priv, new_pool,
				  FUNC0(new_pool->pkt_size));

	return new_pool;
}