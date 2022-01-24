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
struct TYPE_2__ {int /*<<< orphan*/  basic_stats; } ;
struct ena_com_stats_ctx {TYPE_1__ get_resp; } ;
struct ena_com_dev {int dummy; } ;
struct ena_admin_basic_stats {int dummy; } ;
typedef  int /*<<< orphan*/  ctx ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_ADMIN_GET_STATS_TYPE_BASIC ; 
 int FUNC0 (struct ena_com_dev*,struct ena_com_stats_ctx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_admin_basic_stats*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_com_stats_ctx*,int,int) ; 

int FUNC4(struct ena_com_dev *ena_dev,
				struct ena_admin_basic_stats *stats)
{
	struct ena_com_stats_ctx ctx;
	int ret;

	FUNC3(&ctx, 0x0, sizeof(ctx));
	ret = FUNC0(ena_dev, &ctx, ENA_ADMIN_GET_STATS_TYPE_BASIC);
	if (FUNC1(ret == 0))
		FUNC2(stats, &ctx.get_resp.basic_stats,
		       sizeof(ctx.get_resp.basic_stats));

	return ret;
}