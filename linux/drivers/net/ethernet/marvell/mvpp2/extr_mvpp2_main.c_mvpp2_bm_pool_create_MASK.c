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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct mvpp2_bm_pool {int size_bytes; int size; scalar_t__ buf_num; scalar_t__ pkt_size; int /*<<< orphan*/  id; int /*<<< orphan*/  dma_addr; scalar_t__ virt_addr; } ;
struct mvpp2 {scalar_t__ hw_version; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 scalar_t__ MVPP21 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MVPP2_BM_POOL_PTR_ALIGN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int MVPP2_BM_START_MASK ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mvpp2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct mvpp2 *priv,
				struct mvpp2_bm_pool *bm_pool, int size)
{
	u32 val;

	/* Number of buffer pointers must be a multiple of 16, as per
	 * hardware constraints
	 */
	if (!FUNC0(size, 16))
		return -EINVAL;

	/* PPv2.1 needs 8 bytes per buffer pointer, PPv2.2 needs 16
	 * bytes per buffer pointer
	 */
	if (priv->hw_version == MVPP21)
		bm_pool->size_bytes = 2 * sizeof(u32) * size;
	else
		bm_pool->size_bytes = 2 * sizeof(u64) * size;

	bm_pool->virt_addr = FUNC5(dev, bm_pool->size_bytes,
						&bm_pool->dma_addr,
						GFP_KERNEL);
	if (!bm_pool->virt_addr)
		return -ENOMEM;

	if (!FUNC0((unsigned long)bm_pool->virt_addr,
			MVPP2_BM_POOL_PTR_ALIGN)) {
		FUNC6(dev, bm_pool->size_bytes,
				  bm_pool->virt_addr, bm_pool->dma_addr);
		FUNC4(dev, "BM pool %d is not %d bytes aligned\n",
			bm_pool->id, MVPP2_BM_POOL_PTR_ALIGN);
		return -ENOMEM;
	}

	FUNC9(priv, FUNC1(bm_pool->id),
		    FUNC7(bm_pool->dma_addr));
	FUNC9(priv, FUNC3(bm_pool->id), size);

	val = FUNC8(priv, FUNC2(bm_pool->id));
	val |= MVPP2_BM_START_MASK;
	FUNC9(priv, FUNC2(bm_pool->id), val);

	bm_pool->size = size;
	bm_pool->pkt_size = 0;
	bm_pool->buf_num = 0;

	return 0;
}