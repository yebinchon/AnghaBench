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
struct nfp_flower_priv {int /*<<< orphan*/  stats_ctx_table; } ;
struct nfp_fl_stats_ctx_to_flow {int /*<<< orphan*/  ht_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_ctx_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask_len; } ;
struct nfp_fl_payload {TYPE_1__ meta; int /*<<< orphan*/ * unmasked_data; int /*<<< orphan*/  mask_data; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;

/* Variables and functions */
 int ENOENT ; 
 size_t NFP_FL_MASK_ID_LOCATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_flower_priv*,struct nfp_fl_payload*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_fl_stats_ctx_to_flow*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_app*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nfp_app*,int /*<<< orphan*/ ) ; 
 struct nfp_fl_stats_ctx_to_flow* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stats_ctx_table_params ; 

int FUNC8(struct nfp_app *app,
			     struct nfp_fl_payload *nfp_flow)
{
	struct nfp_fl_stats_ctx_to_flow *ctx_entry;
	struct nfp_flower_priv *priv = app->priv;
	u8 new_mask_id = 0;
	u32 temp_ctx_id;

	FUNC1(priv, nfp_flow);

	FUNC4(app, nfp_flow->mask_data,
			      nfp_flow->meta.mask_len, &nfp_flow->meta.flags,
			      &new_mask_id);

	/* Update flow payload with mask ids. */
	nfp_flow->unmasked_data[NFP_FL_MASK_ID_LOCATION] = new_mask_id;

	/* Release the stats ctx id and ctx to flow table entry. */
	temp_ctx_id = FUNC2(nfp_flow->meta.host_ctx_id);

	ctx_entry = FUNC6(&priv->stats_ctx_table, &temp_ctx_id,
					   stats_ctx_table_params);
	if (!ctx_entry)
		return -ENOENT;

	FUNC0(FUNC7(&priv->stats_ctx_table,
					    &ctx_entry->ht_node,
					    stats_ctx_table_params));
	FUNC3(ctx_entry);

	return FUNC5(app, temp_ctx_id);
}