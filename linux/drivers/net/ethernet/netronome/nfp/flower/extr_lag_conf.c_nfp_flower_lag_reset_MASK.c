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
struct nfp_fl_lag {int rst_cfg; } ;
typedef  enum nfp_fl_lag_batch { ____Placeholder_nfp_fl_lag_batch } nfp_fl_lag_batch ;

/* Variables and functions */
 int NFP_FL_LAG_BATCH_FIRST ; 
 int FUNC0 (struct nfp_fl_lag*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

int FUNC1(struct nfp_fl_lag *lag)
{
	enum nfp_fl_lag_batch batch = NFP_FL_LAG_BATCH_FIRST;

	lag->rst_cfg = true;
	return FUNC0(lag, NULL, NULL, 0, &batch);
}