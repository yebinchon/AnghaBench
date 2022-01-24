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
struct wil_ring_tx_data {scalar_t__ enabled; int /*<<< orphan*/  dot1x_open; } ;
struct wil_ring {scalar_t__ va; } ;
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int max_assoc_sta; int** ring2cid_tid; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;
struct sk_buff {scalar_t__ protocol; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 int /*<<< orphan*/  ETH_P_PAE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*,int,...) ; 
 int FUNC3 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC4 (struct wil6210_priv*) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static struct wil_ring *FUNC6(struct wil6210_priv *wil,
					  struct wil6210_vif *vif,
					  struct sk_buff *skb)
{
	int i, cid;
	const u8 *da = FUNC5(skb);
	int min_ring_id = FUNC4(wil);

	cid = FUNC3(wil, vif->mid, da);

	if (cid < 0 || cid >= wil->max_assoc_sta)
		return NULL;

	/* TODO: fix for multiple TID */
	for (i = min_ring_id; i < FUNC0(wil->ring2cid_tid); i++) {
		if (!wil->ring_tx_data[i].dot1x_open &&
		    skb->protocol != FUNC1(ETH_P_PAE))
			continue;
		if (wil->ring2cid_tid[i][0] == cid) {
			struct wil_ring *v = &wil->ring_tx[i];
			struct wil_ring_tx_data *txdata = &wil->ring_tx_data[i];

			FUNC2(wil, "find_tx_ucast: (%pM) -> [%d]\n",
				     da, i);
			if (v->va && txdata->enabled) {
				return v;
			} else {
				FUNC2(wil,
					     "find_tx_ucast: vring[%d] not valid\n",
					     i);
				return NULL;
			}
		}
	}

	return NULL;
}