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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int size; } ;
struct mvneta_bm_pool {int /*<<< orphan*/  id; int /*<<< orphan*/  phys_addr; scalar_t__ virt_addr; TYPE_1__ hwbm_pool; } ;
struct mvneta_bm {struct platform_device* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MVNETA_BM_POOL_PTR_ALIGN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mvneta_bm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvneta_bm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvneta_bm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct mvneta_bm *priv,
				 struct mvneta_bm_pool *bm_pool)
{
	struct platform_device *pdev = priv->pdev;
	u8 target_id, attr;
	int size_bytes, err;
	size_bytes = sizeof(u32) * bm_pool->hwbm_pool.size;
	bm_pool->virt_addr = FUNC3(&pdev->dev, size_bytes,
						&bm_pool->phys_addr,
						GFP_KERNEL);
	if (!bm_pool->virt_addr)
		return -ENOMEM;

	if (!FUNC0((u32)bm_pool->virt_addr, MVNETA_BM_POOL_PTR_ALIGN)) {
		FUNC4(&pdev->dev, size_bytes, bm_pool->virt_addr,
				  bm_pool->phys_addr);
		FUNC2(&pdev->dev, "BM pool %d is not %d bytes aligned\n",
			bm_pool->id, MVNETA_BM_POOL_PTR_ALIGN);
		return -ENOMEM;
	}

	err = FUNC5(bm_pool->phys_addr, &target_id,
					   &attr);
	if (err < 0) {
		FUNC4(&pdev->dev, size_bytes, bm_pool->virt_addr,
				  bm_pool->phys_addr);
		return err;
	}

	/* Set pool address */
	FUNC8(priv, FUNC1(bm_pool->id),
			bm_pool->phys_addr);

	FUNC7(priv, bm_pool->id, target_id,  attr);
	FUNC6(priv, bm_pool->id);

	return 0;
}