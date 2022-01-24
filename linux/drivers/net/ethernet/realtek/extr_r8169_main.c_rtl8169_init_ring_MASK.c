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
struct rtl8169_private {int /*<<< orphan*/  Rx_databuff; int /*<<< orphan*/  tx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 
 int FUNC2 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC3(struct rtl8169_private *tp)
{
	FUNC1(tp);

	FUNC0(tp->tx_skb, 0, sizeof(tp->tx_skb));
	FUNC0(tp->Rx_databuff, 0, sizeof(tp->Rx_databuff));

	return FUNC2(tp);
}