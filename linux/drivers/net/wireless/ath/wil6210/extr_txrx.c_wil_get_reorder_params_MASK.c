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
typedef  int /*<<< orphan*/  u16 ;
struct wil6210_priv {int dummy; } ;
struct vring_rx_desc {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vring_rx_desc*) ; 
 int FUNC1 (struct vring_rx_desc*) ; 
 int FUNC2 (struct vring_rx_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vring_rx_desc*) ; 
 int FUNC4 (struct vring_rx_desc*) ; 
 int FUNC5 (struct sk_buff*) ; 
 struct vring_rx_desc* FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct wil6210_priv *wil,
				   struct sk_buff *skb, int *tid, int *cid,
				   int *mid, u16 *seq, int *mcast, int *retry)
{
	struct vring_rx_desc *d = FUNC6(skb);

	*tid = FUNC4(d);
	*cid = FUNC5(skb);
	*mid = FUNC1(d);
	*seq = FUNC3(d);
	*mcast = FUNC0(d);
	*retry = FUNC2(d);
}