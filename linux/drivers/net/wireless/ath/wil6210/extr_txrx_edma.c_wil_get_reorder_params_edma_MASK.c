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
struct wil_rx_status_extended {int dummy; } ;
struct wil6210_priv {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wil_rx_status_extended*) ; 
 int FUNC2 (struct wil_rx_status_extended*) ; 
 int FUNC3 (struct wil_rx_status_extended*) ; 
 int FUNC4 (struct wil_rx_status_extended*) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,struct wil_rx_status_extended*) ; 
 int FUNC6 (struct wil_rx_status_extended*) ; 
 struct wil_rx_status_extended* FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct wil6210_priv *wil,
					struct sk_buff *skb, int *tid,
					int *cid, int *mid, u16 *seq,
					int *mcast, int *retry)
{
	struct wil_rx_status_extended *s = FUNC7(skb);

	*tid = FUNC6(s);
	*cid = FUNC1(s);
	*mid = FUNC3(s);
	*seq = FUNC0(FUNC5(wil, s));
	*mcast = FUNC2(s);
	*retry = FUNC4(s);
}