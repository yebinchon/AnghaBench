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
typedef  scalar_t__ u8 ;
struct mwifiex_tx_ba_stream_tbl {int dummy; } ;
struct mwifiex_rx_reorder_tbl {int dummy; } ;
struct mwifiex_ra_list_tbl {int amsdu_in_ampdu; int /*<<< orphan*/  ba_status; } ;
struct mwifiex_private {int /*<<< orphan*/  tx_ba_stream_tbl_lock; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA_SETUP_NONE ; 
 int /*<<< orphan*/  EVENT ; 
 scalar_t__ TYPE_DELBA_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_private*,struct mwifiex_tx_ba_stream_tbl*) ; 
 struct mwifiex_rx_reorder_tbl* FUNC1 (struct mwifiex_private*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*,struct mwifiex_rx_reorder_tbl*) ; 
 struct mwifiex_tx_ba_stream_tbl* FUNC4 (struct mwifiex_private*,int,scalar_t__*) ; 
 int FUNC5 (struct mwifiex_private*,int) ; 
 struct mwifiex_ra_list_tbl* FUNC6 (struct mwifiex_private*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(struct mwifiex_private *priv, int tid, u8 *peer_mac,
		   u8 type, int initiator)
{
	struct mwifiex_rx_reorder_tbl *tbl;
	struct mwifiex_tx_ba_stream_tbl *ptx_tbl;
	struct mwifiex_ra_list_tbl *ra_list;
	u8 cleanup_rx_reorder_tbl;
	int tid_down;

	if (type == TYPE_DELBA_RECEIVE)
		cleanup_rx_reorder_tbl = (initiator) ? true : false;
	else
		cleanup_rx_reorder_tbl = (initiator) ? false : true;

	FUNC2(priv->adapter, EVENT, "event: DELBA: %pM tid=%d initiator=%d\n",
		    peer_mac, tid, initiator);

	if (cleanup_rx_reorder_tbl) {
		tbl = FUNC1(priv, tid,
								 peer_mac);
		if (!tbl) {
			FUNC2(priv->adapter, EVENT,
				    "event: TID, TA not found in table\n");
			return;
		}
		FUNC3(priv, tbl);
	} else {
		ptx_tbl = FUNC4(priv, tid, peer_mac);
		if (!ptx_tbl) {
			FUNC2(priv->adapter, EVENT,
				    "event: TID, RA not found in table\n");
			return;
		}

		tid_down = FUNC5(priv, tid);
		ra_list = FUNC6(priv, tid_down, peer_mac);
		if (ra_list) {
			ra_list->amsdu_in_ampdu = false;
			ra_list->ba_status = BA_SETUP_NONE;
		}
		FUNC7(&priv->tx_ba_stream_tbl_lock);
		FUNC0(priv, ptx_tbl);
		FUNC8(&priv->tx_ba_stream_tbl_lock);
	}
}