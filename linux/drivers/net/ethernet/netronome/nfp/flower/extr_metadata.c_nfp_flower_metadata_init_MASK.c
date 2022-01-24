#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u64 ;
struct TYPE_7__ {void* buf; } ;
struct TYPE_8__ {TYPE_3__ mask_id_free_list; void* last_used; scalar_t__ init_unallocated; } ;
struct TYPE_5__ {int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {TYPE_1__ free_list; int /*<<< orphan*/  init_unalloc; } ;
struct nfp_flower_priv {int /*<<< orphan*/  flow_table; int /*<<< orphan*/  stats_ctx_table; TYPE_4__ mask_ids; TYPE_2__ stats_ids; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  stats; int /*<<< orphan*/  stats_ring_size; int /*<<< orphan*/  mask_id_seed; int /*<<< orphan*/  mask_table; } ;
struct nfp_fl_stats {int dummy; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NFP_FLOWER_MASK_ELEMENT_RS ; 
 scalar_t__ NFP_FLOWER_MASK_ENTRY_RS ; 
 int /*<<< orphan*/  NFP_FL_STATS_ELEM_RS ; 
 int /*<<< orphan*/  NFP_FL_STAT_ID_MU_NUM ; 
 int /*<<< orphan*/  NFP_FL_STAT_ID_STAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfp_flower_table_params ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stats_ctx_table_params ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct nfp_app *app, u64 host_ctx_count,
			     unsigned int host_num_mems)
{
	struct nfp_flower_priv *priv = app->priv;
	int err, stats_size;

	FUNC4(priv->mask_table);

	err = FUNC9(&priv->flow_table, &nfp_flower_table_params);
	if (err)
		return err;

	err = FUNC9(&priv->stats_ctx_table, &stats_ctx_table_params);
	if (err)
		goto err_free_flow_table;

	FUNC3(&priv->mask_id_seed, sizeof(priv->mask_id_seed));

	/* Init ring buffer and unallocated mask_ids. */
	priv->mask_ids.mask_id_free_list.buf =
		FUNC6(NFP_FLOWER_MASK_ENTRY_RS,
			      NFP_FLOWER_MASK_ELEMENT_RS, GFP_KERNEL);
	if (!priv->mask_ids.mask_id_free_list.buf)
		goto err_free_stats_ctx_table;

	priv->mask_ids.init_unallocated = NFP_FLOWER_MASK_ENTRY_RS - 1;

	/* Init timestamps for mask id*/
	priv->mask_ids.last_used =
		FUNC6(NFP_FLOWER_MASK_ENTRY_RS,
			      sizeof(*priv->mask_ids.last_used), GFP_KERNEL);
	if (!priv->mask_ids.last_used)
		goto err_free_mask_id;

	/* Init ring buffer and unallocated stats_ids. */
	priv->stats_ids.free_list.buf =
		FUNC12(FUNC1(NFP_FL_STATS_ELEM_RS,
				   priv->stats_ring_size));
	if (!priv->stats_ids.free_list.buf)
		goto err_free_last_used;

	priv->stats_ids.init_unalloc = FUNC2(host_ctx_count, host_num_mems);

	stats_size = FUNC0(NFP_FL_STAT_ID_STAT, host_ctx_count) |
		     FUNC0(NFP_FL_STAT_ID_MU_NUM, host_num_mems - 1);
	priv->stats = FUNC7(stats_size, sizeof(struct nfp_fl_stats),
				     GFP_KERNEL);
	if (!priv->stats)
		goto err_free_ring_buf;

	FUNC10(&priv->stats_lock);

	return 0;

err_free_ring_buf:
	FUNC11(priv->stats_ids.free_list.buf);
err_free_last_used:
	FUNC5(priv->mask_ids.last_used);
err_free_mask_id:
	FUNC5(priv->mask_ids.mask_id_free_list.buf);
err_free_stats_ctx_table:
	FUNC8(&priv->stats_ctx_table);
err_free_flow_table:
	FUNC8(&priv->flow_table);
	return -ENOMEM;
}