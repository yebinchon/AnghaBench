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
struct dpaa_bp {int /*<<< orphan*/  free_buf_cb; int /*<<< orphan*/  seed_cb; int /*<<< orphan*/  config_count; int /*<<< orphan*/ * percpu_count; int /*<<< orphan*/  bpid; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dpaa_bp* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSL_DPAA_BPID_INV ; 
 int /*<<< orphan*/  FSL_DPAA_ETH_MAX_BUF_COUNT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 struct dpaa_bp* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dpaa_bp_free_pf ; 
 int /*<<< orphan*/  dpaa_bp_seed ; 

__attribute__((used)) static struct dpaa_bp *FUNC3(struct device *dev)
{
	struct dpaa_bp *dpaa_bp;

	dpaa_bp = FUNC2(dev, sizeof(*dpaa_bp), GFP_KERNEL);
	if (!dpaa_bp)
		return FUNC0(-ENOMEM);

	dpaa_bp->bpid = FSL_DPAA_BPID_INV;
	dpaa_bp->percpu_count = FUNC1(dev, *dpaa_bp->percpu_count);
	if (!dpaa_bp->percpu_count)
		return FUNC0(-ENOMEM);

	dpaa_bp->config_count = FSL_DPAA_ETH_MAX_BUF_COUNT;

	dpaa_bp->seed_cb = dpaa_bp_seed;
	dpaa_bp->free_buf_cb = dpaa_bp_free_pf;

	return dpaa_bp;
}