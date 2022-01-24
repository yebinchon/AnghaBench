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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bw_allocation ; 
 int /*<<< orphan*/  ets_tcn_config_reg ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  qetc_reg ; 
 int /*<<< orphan*/ * tc_configuration ; 

int FUNC4(struct mlx5_core_dev *mdev,
				u8 tc, u8 *bw_pct)
{
	u32 out[FUNC2(qetc_reg)];
	void *ets_tcn_conf;
	int err;

	err = FUNC3(mdev, out, sizeof(out));
	if (err)
		return err;

	ets_tcn_conf = FUNC0(qetc_reg, out,
				    tc_configuration[tc]);

	*bw_pct = FUNC1(ets_tcn_config_reg, ets_tcn_conf,
			   bw_allocation);

	return 0;
}