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
struct wil_status_ring {int swhead; int size; int /*<<< orphan*/  hwtail; int /*<<< orphan*/  va; } ;
struct wil_ring {int /*<<< orphan*/  va; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int num_rx_status_rings; struct wil6210_vif** vifs; scalar_t__ use_rx_hw_reordering; struct wil_status_ring* srings; struct wil_ring ring_rx; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct net_device* FUNC2 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,struct sk_buff*) ; 
 int FUNC8 (void*) ; 
 void* FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct wil6210_priv*,struct wil_status_ring*) ; 
 int /*<<< orphan*/  FUNC11 (struct wil6210_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC12(struct wil6210_priv *wil, int *quota)
{
	struct net_device *ndev;
	struct wil_ring *ring = &wil->ring_rx;
	struct wil_status_ring *sring;
	struct sk_buff *skb;
	int i;

	if (FUNC1(!ring->va)) {
		FUNC4(wil, "Rx IRQ while Rx not yet initialized\n");
		return;
	}
	FUNC3(wil, "rx_handle\n");

	for (i = 0; i < wil->num_rx_status_rings; i++) {
		sring = &wil->srings[i];
		if (FUNC1(!sring->va)) {
			FUNC4(wil,
				"Rx IRQ while Rx status ring %d not yet initialized\n",
				i);
			continue;
		}

		while ((*quota > 0) &&
		       (NULL != (skb =
			FUNC10(wil, sring)))) {
			(*quota)--;
			if (wil->use_rx_hw_reordering) {
				void *msg = FUNC9(skb);
				int mid = FUNC8(msg);
				struct wil6210_vif *vif = wil->vifs[mid];

				if (FUNC1(!vif)) {
					FUNC3(wil,
						     "RX desc invalid mid %d",
						     mid);
					FUNC0(skb);
					continue;
				}
				ndev = FUNC2(vif);
				FUNC5(skb, ndev);
			} else {
				FUNC7(wil, skb);
			}
		}

		FUNC11(wil, sring->hwtail, (sring->swhead - 1) % sring->size);
	}

	FUNC6(wil);
}