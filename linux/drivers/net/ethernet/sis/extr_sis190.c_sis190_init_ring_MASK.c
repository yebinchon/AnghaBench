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
struct sk_buff {int dummy; } ;
struct sis190_private {scalar_t__ RxDescRing; int /*<<< orphan*/  Rx_skbuff; int /*<<< orphan*/  Tx_skbuff; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int NUM_RX_DESC ; 
 int NUM_TX_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 struct sis190_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sis190_private*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sis190_private*) ; 
 int FUNC5 (struct sis190_private*,struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct sis190_private *tp = FUNC1(dev);

	FUNC2(tp);

	FUNC0(tp->Tx_skbuff, 0x0, NUM_TX_DESC * sizeof(struct sk_buff *));
	FUNC0(tp->Rx_skbuff, 0x0, NUM_RX_DESC * sizeof(struct sk_buff *));

	if (FUNC5(tp, dev, 0, NUM_RX_DESC) != NUM_RX_DESC)
		goto err_rx_clear;

	FUNC3(tp->RxDescRing + NUM_RX_DESC - 1);

	return 0;

err_rx_clear:
	FUNC4(tp);
	return -ENOMEM;
}