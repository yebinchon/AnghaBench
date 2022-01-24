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
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
struct TYPE_7__ {TYPE_2__ free_list; } ;
struct TYPE_8__ {int /*<<< orphan*/  buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  last_used; TYPE_4__ mask_id_free_list; } ;
struct nfp_flower_priv {TYPE_3__ stats_ids; TYPE_1__ mask_ids; int /*<<< orphan*/  stats; int /*<<< orphan*/  stats_ctx_table; int /*<<< orphan*/  flow_table; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfp_check_rhashtable_empty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct nfp_app *app)
{
	struct nfp_flower_priv *priv = app->priv;

	if (!priv)
		return;

	FUNC2(&priv->flow_table,
				    nfp_check_rhashtable_empty, NULL);
	FUNC2(&priv->stats_ctx_table,
				    nfp_check_rhashtable_empty, NULL);
	FUNC1(priv->stats);
	FUNC0(priv->mask_ids.mask_id_free_list.buf);
	FUNC0(priv->mask_ids.last_used);
	FUNC3(priv->stats_ids.free_list.buf);
}