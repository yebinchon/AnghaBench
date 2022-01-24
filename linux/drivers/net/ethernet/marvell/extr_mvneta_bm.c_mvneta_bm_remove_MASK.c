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
typedef  int u8 ;
struct platform_device {int dummy; } ;
struct mvneta_bm_pool {int dummy; } ;
struct mvneta_bm {int /*<<< orphan*/  clk; struct mvneta_bm_pool* bm_pools; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVNETA_BM_COMMAND_REG ; 
 int MVNETA_BM_POOLS_NUM ; 
 int /*<<< orphan*/  MVNETA_BM_STOP_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_bm*,struct mvneta_bm_pool*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvneta_bm*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvneta_bm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mvneta_bm* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct mvneta_bm *priv = FUNC4(pdev);
	u8 all_ports_map = 0xff;
	int i = 0;

	for (i = 0; i < MVNETA_BM_POOLS_NUM; i++) {
		struct mvneta_bm_pool *bm_pool = &priv->bm_pools[i];

		FUNC1(priv, bm_pool, all_ports_map);
	}

	FUNC2(priv);

	/* Dectivate BM unit */
	FUNC3(priv, MVNETA_BM_COMMAND_REG, MVNETA_BM_STOP_MASK);

	FUNC0(priv->clk);

	return 0;
}