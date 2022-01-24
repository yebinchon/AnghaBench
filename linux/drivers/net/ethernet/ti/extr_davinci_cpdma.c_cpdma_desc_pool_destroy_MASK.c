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
struct cpdma_desc_pool {int /*<<< orphan*/  phys; scalar_t__ cpumap; int /*<<< orphan*/  mem_size; int /*<<< orphan*/  gen_pool; } ;
struct cpdma_ctlr {int /*<<< orphan*/  dev; struct cpdma_desc_pool* pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cpdma_ctlr *ctlr)
{
	struct cpdma_desc_pool *pool = ctlr->pool;

	if (!pool)
		return;

	FUNC0(FUNC3(pool->gen_pool) != FUNC2(pool->gen_pool),
	     "cpdma_desc_pool size %zd != avail %zd",
	     FUNC3(pool->gen_pool),
	     FUNC2(pool->gen_pool));
	if (pool->cpumap)
		FUNC1(ctlr->dev, pool->mem_size, pool->cpumap,
				  pool->phys);
}