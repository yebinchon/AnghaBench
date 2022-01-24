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
typedef  int /*<<< orphan*/  u8 ;
struct mwifiex_tx_ba_stream_tbl {int tid; int ba_status; int /*<<< orphan*/  list; int /*<<< orphan*/  ra; } ;
struct mwifiex_ra_list_tbl {int ba_status; int amsdu_in_ampdu; } ;
struct mwifiex_private {int /*<<< orphan*/  tx_ba_stream_tbl_lock; int /*<<< orphan*/  tx_ba_stream_tbl_ptr; } ;
typedef  enum mwifiex_ba_status { ____Placeholder_mwifiex_ba_status } mwifiex_ba_status ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mwifiex_tx_ba_stream_tbl* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mwifiex_private*,int) ; 
 struct mwifiex_ra_list_tbl* FUNC6 (struct mwifiex_private*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct mwifiex_private *priv, u8 *ra, int tid,
			   enum mwifiex_ba_status ba_status)
{
	struct mwifiex_tx_ba_stream_tbl *new_node;
	struct mwifiex_ra_list_tbl *ra_list;
	int tid_down;

	if (!FUNC4(priv, tid, ra)) {
		new_node = FUNC1(sizeof(struct mwifiex_tx_ba_stream_tbl),
				   GFP_ATOMIC);
		if (!new_node)
			return;

		tid_down = FUNC5(priv, tid);
		ra_list = FUNC6(priv, tid_down, ra);
		if (ra_list) {
			ra_list->ba_status = ba_status;
			ra_list->amsdu_in_ampdu = false;
		}
		FUNC0(&new_node->list);

		new_node->tid = tid;
		new_node->ba_status = ba_status;
		FUNC3(new_node->ra, ra, ETH_ALEN);

		FUNC7(&priv->tx_ba_stream_tbl_lock);
		FUNC2(&new_node->list, &priv->tx_ba_stream_tbl_ptr);
		FUNC8(&priv->tx_ba_stream_tbl_lock);
	}
}