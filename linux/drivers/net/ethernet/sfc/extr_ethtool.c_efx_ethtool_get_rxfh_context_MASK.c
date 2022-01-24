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
struct net_device {int dummy; } ;
struct efx_rss_context {int /*<<< orphan*/  rx_hash_key; int /*<<< orphan*/  rx_indir_table; } ;
struct efx_nic {int /*<<< orphan*/  rss_lock; TYPE_1__* type; } ;
struct TYPE_2__ {int (* rx_pull_rss_context_config ) (struct efx_nic*,struct efx_rss_context*) ;int rx_hash_key_size; } ;

/* Variables and functions */
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_RSS_HASH_TOP ; 
 struct efx_rss_context* FUNC0 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct efx_nic*,struct efx_rss_context*) ; 

__attribute__((used)) static int FUNC6(struct net_device *net_dev, u32 *indir,
					u8 *key, u8 *hfunc, u32 rss_context)
{
	struct efx_nic *efx = FUNC4(net_dev);
	struct efx_rss_context *ctx;
	int rc = 0;

	if (!efx->type->rx_pull_rss_context_config)
		return -EOPNOTSUPP;

	FUNC2(&efx->rss_lock);
	ctx = FUNC0(efx, rss_context);
	if (!ctx) {
		rc = -ENOENT;
		goto out_unlock;
	}
	rc = efx->type->rx_pull_rss_context_config(efx, ctx);
	if (rc)
		goto out_unlock;

	if (hfunc)
		*hfunc = ETH_RSS_HASH_TOP;
	if (indir)
		FUNC1(indir, ctx->rx_indir_table, sizeof(ctx->rx_indir_table));
	if (key)
		FUNC1(key, ctx->rx_hash_key, efx->type->rx_hash_key_size);
out_unlock:
	FUNC3(&efx->rss_lock);
	return rc;
}