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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct efx_rss_context {scalar_t__* rx_hash_key; int /*<<< orphan*/  user_id; int /*<<< orphan*/ * rx_indir_table; int /*<<< orphan*/  context_id; } ;
struct efx_nic {int /*<<< orphan*/  rss_lock; TYPE_1__* type; } ;
struct TYPE_2__ {int (* rx_push_rss_context_config ) (struct efx_nic*,struct efx_rss_context*,int /*<<< orphan*/  const*,scalar_t__ const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_EF10_RSS_CONTEXT_INVALID ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ; 
 scalar_t__ const ETH_RSS_HASH_TOP ; 
 int /*<<< orphan*/  ETH_RXFH_CONTEXT_ALLOC ; 
 struct efx_rss_context* FUNC0 (struct efx_nic*) ; 
 struct efx_rss_context* FUNC1 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_rss_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,struct efx_rss_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int) ; 
 int FUNC8 (struct efx_nic*,struct efx_rss_context*,int /*<<< orphan*/  const*,scalar_t__ const*) ; 
 int FUNC9 (struct efx_nic*,struct efx_rss_context*,int /*<<< orphan*/  const*,scalar_t__ const*) ; 

__attribute__((used)) static int FUNC10(struct net_device *net_dev,
					const u32 *indir, const u8 *key,
					const u8 hfunc, u32 *rss_context,
					bool delete)
{
	struct efx_nic *efx = FUNC6(net_dev);
	struct efx_rss_context *ctx;
	bool allocated = false;
	int rc;

	if (!efx->type->rx_push_rss_context_config)
		return -EOPNOTSUPP;
	/* Hash function is Toeplitz, cannot be changed */
	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
		return -EOPNOTSUPP;

	FUNC4(&efx->rss_lock);

	if (*rss_context == ETH_RXFH_CONTEXT_ALLOC) {
		if (delete) {
			/* alloc + delete == Nothing to do */
			rc = -EINVAL;
			goto out_unlock;
		}
		ctx = FUNC0(efx);
		if (!ctx) {
			rc = -ENOMEM;
			goto out_unlock;
		}
		ctx->context_id = EFX_EF10_RSS_CONTEXT_INVALID;
		/* Initialise indir table and key to defaults */
		FUNC3(efx, ctx);
		FUNC7(ctx->rx_hash_key, sizeof(ctx->rx_hash_key));
		allocated = true;
	} else {
		ctx = FUNC1(efx, *rss_context);
		if (!ctx) {
			rc = -ENOENT;
			goto out_unlock;
		}
	}

	if (delete) {
		/* delete this context */
		rc = efx->type->rx_push_rss_context_config(efx, ctx, NULL, NULL);
		if (!rc)
			FUNC2(ctx);
		goto out_unlock;
	}

	if (!key)
		key = ctx->rx_hash_key;
	if (!indir)
		indir = ctx->rx_indir_table;

	rc = efx->type->rx_push_rss_context_config(efx, ctx, indir, key);
	if (rc && allocated)
		FUNC2(ctx);
	else
		*rss_context = ctx->user_id;
out_unlock:
	FUNC5(&efx->rss_lock);
	return rc;
}