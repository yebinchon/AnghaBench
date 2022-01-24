#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mwifiex_sta_node {int /*<<< orphan*/  max_amsdu; int /*<<< orphan*/  tx_pause; } ;
struct mwifiex_ra_list_tbl {int tdls_link; int amsdu_in_ampdu; int /*<<< orphan*/  list; int /*<<< orphan*/  ba_packet_thr; scalar_t__ ba_pkt_count; scalar_t__ is_11n_enabled; int /*<<< orphan*/  max_amsdu; int /*<<< orphan*/  tx_paused; int /*<<< orphan*/  ba_status; } ;
struct TYPE_4__ {TYPE_1__* tid_tbl_ptr; } ;
struct mwifiex_private {TYPE_2__ wmm; int /*<<< orphan*/  sta_list_spinlock; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ra_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA_SETUP_NONE ; 
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ FUNC0 (struct mwifiex_private*) ; 
 int MAX_NUM_TID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,struct mwifiex_ra_list_tbl*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct mwifiex_sta_node* FUNC4 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (struct mwifiex_private*,struct mwifiex_sta_node*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mwifiex_private*) ; 
 scalar_t__ FUNC9 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 struct mwifiex_ra_list_tbl* FUNC10 (struct mwifiex_adapter*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct mwifiex_private *priv, const u8 *ra)
{
	int i;
	struct mwifiex_ra_list_tbl *ra_list;
	struct mwifiex_adapter *adapter = priv->adapter;
	struct mwifiex_sta_node *node;


	for (i = 0; i < MAX_NUM_TID; ++i) {
		ra_list = FUNC10(adapter, ra);
		FUNC2(adapter, INFO,
			    "info: created ra_list %p\n", ra_list);

		if (!ra_list)
			break;

		ra_list->is_11n_enabled = 0;
		ra_list->tdls_link = false;
		ra_list->ba_status = BA_SETUP_NONE;
		ra_list->amsdu_in_ampdu = false;
		if (!FUNC8(priv)) {
			if (FUNC7
				(FUNC5(priv, ra))) {
				ra_list->tdls_link = true;
				ra_list->is_11n_enabled =
					FUNC9(priv, ra);
			} else {
				ra_list->is_11n_enabled = FUNC0(priv);
			}
		} else {
			FUNC11(&priv->sta_list_spinlock);
			node = FUNC4(priv, ra);
			if (node)
				ra_list->tx_paused = node->tx_pause;
			ra_list->is_11n_enabled =
				      FUNC6(priv, node);
			if (ra_list->is_11n_enabled)
				ra_list->max_amsdu = node->max_amsdu;
			FUNC12(&priv->sta_list_spinlock);
		}

		FUNC2(adapter, DATA, "data: ralist %p: is_11n_enabled=%d\n",
			    ra_list, ra_list->is_11n_enabled);

		if (ra_list->is_11n_enabled) {
			ra_list->ba_pkt_count = 0;
			ra_list->ba_packet_thr =
					      FUNC3();
		}
		FUNC1(&ra_list->list,
			      &priv->wmm.tid_tbl_ptr[i].ra_list);
	}
}