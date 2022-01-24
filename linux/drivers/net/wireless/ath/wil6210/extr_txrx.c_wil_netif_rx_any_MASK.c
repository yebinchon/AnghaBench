#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wil_net_stats {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_replay; } ;
struct TYPE_6__ {scalar_t__ (* rx_crypto_check ) (struct wil6210_priv*,struct sk_buff*) ;int /*<<< orphan*/  (* rx_error_check ) (struct wil6210_priv*,struct sk_buff*,struct wil_net_stats*) ;int /*<<< orphan*/  (* get_netif_rx_params ) (struct sk_buff*,int*,int*) ;} ;
struct wil6210_priv {TYPE_3__ txrx_ops; TYPE_1__* sta; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_4__ {struct wil_net_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct wil6210_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int*,int*) ; 
 scalar_t__ FUNC4 (struct wil6210_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,struct sk_buff*,struct wil_net_stats*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct net_device*,int,struct wil_net_stats*,int) ; 

void FUNC9(struct sk_buff *skb, struct net_device *ndev)
{
	int cid, security;
	struct wil6210_priv *wil = FUNC1(ndev);
	struct wil_net_stats *stats;

	wil->txrx_ops.get_netif_rx_params(skb, &cid, &security);

	stats = &wil->sta[cid].stats;

	FUNC2(skb);

	if (security && (wil->txrx_ops.rx_crypto_check(wil, skb) != 0)) {
		FUNC7(wil, "Rx drop %d bytes\n", skb->len);
		FUNC0(skb);
		ndev->stats.rx_dropped++;
		stats->rx_replay++;
		stats->rx_dropped++;
		return;
	}

	/* check errors reported by HW and update statistics */
	if (FUNC6(wil->txrx_ops.rx_error_check(wil, skb, stats))) {
		FUNC0(skb);
		return;
	}

	FUNC8(skb, ndev, cid, stats, true);
}