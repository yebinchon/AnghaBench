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
struct mwifiex_tx_pause_tlv {scalar_t__ tx_pause; int /*<<< orphan*/  peermac; int /*<<< orphan*/  pkt_cnt; } ;
struct mwifiex_sta_node {scalar_t__ tx_pause; } ;
struct mwifiex_private {int port_open; int /*<<< orphan*/  sta_list_spinlock; TYPE_1__* netdev; int /*<<< orphan*/  adapter; } ;
struct mwifiex_ie_types_header {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct mwifiex_sta_node* FUNC3 (struct mwifiex_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mwifiex_private *priv,
					 struct mwifiex_ie_types_header *tlv)
{
	struct mwifiex_tx_pause_tlv *tp;
	struct mwifiex_sta_node *sta_ptr;

	tp = (void *)tlv;
	FUNC2(priv->adapter, EVENT,
		    "uap tx_pause: %pM pause=%d, pkts=%d\n",
		    tp->peermac, tp->tx_pause,
		    tp->pkt_cnt);

	if (FUNC0(tp->peermac, priv->netdev->dev_addr)) {
		if (tp->tx_pause)
			priv->port_open = false;
		else
			priv->port_open = true;
	} else if (FUNC1(tp->peermac)) {
		FUNC4(priv, tp->peermac, tp->tx_pause);
	} else {
		FUNC5(&priv->sta_list_spinlock);
		sta_ptr = FUNC3(priv, tp->peermac);
		if (sta_ptr && sta_ptr->tx_pause != tp->tx_pause) {
			sta_ptr->tx_pause = tp->tx_pause;
			FUNC4(priv, tp->peermac,
						       tp->tx_pause);
		}
		FUNC6(&priv->sta_list_spinlock);
	}
}