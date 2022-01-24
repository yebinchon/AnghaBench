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
typedef  int /*<<< orphan*/  u64 ;
struct xgene_enet_pdata {int /*<<< orphan*/  extd_stats; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int XGENE_EXTD_STATS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_enet_pdata*) ; 

int FUNC3(struct xgene_enet_pdata *pdata)
{
	pdata->extd_stats = FUNC0(&pdata->pdev->dev,
			XGENE_EXTD_STATS_LEN, sizeof(u64), GFP_KERNEL);
	if (!pdata->extd_stats)
		return -ENOMEM;

	FUNC2(pdata);
	FUNC1(pdata->extd_stats, 0, XGENE_EXTD_STATS_LEN * sizeof(u64));

	return 0;
}