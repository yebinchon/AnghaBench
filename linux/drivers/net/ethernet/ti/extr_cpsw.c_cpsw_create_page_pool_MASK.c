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
struct page_pool_params {int pool_size; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_dir; int /*<<< orphan*/  nid; int /*<<< orphan*/  flags; scalar_t__ order; } ;
struct page_pool {int dummy; } ;
struct cpsw_common {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ FUNC0 (struct page_pool*) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  PP_FLAG_DMA_MAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct page_pool* FUNC2 (struct page_pool_params*) ; 

__attribute__((used)) static struct page_pool *FUNC3(struct cpsw_common *cpsw,
					       int size)
{
	struct page_pool_params pp_params;
	struct page_pool *pool;

	pp_params.order = 0;
	pp_params.flags = PP_FLAG_DMA_MAP;
	pp_params.pool_size = size;
	pp_params.nid = NUMA_NO_NODE;
	pp_params.dma_dir = DMA_BIDIRECTIONAL;
	pp_params.dev = cpsw->dev;

	pool = FUNC2(&pp_params);
	if (FUNC0(pool))
		FUNC1(cpsw->dev, "cannot create rx page pool\n");

	return pool;
}