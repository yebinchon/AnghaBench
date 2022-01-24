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
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct be_wrb_params {int /*<<< orphan*/  features; int /*<<< orphan*/  member_0; } ;
struct be_tx_obj {scalar_t__ pend_wrb_cnt; } ;
struct be_adapter {struct be_tx_obj* tx_obj; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  tx_drv_drops; int /*<<< orphan*/  tx_stops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  OS2BMC ; 
 scalar_t__ FUNC1 (struct net_device*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*,struct sk_buff*,struct be_wrb_params*) ; 
 scalar_t__ FUNC3 (struct be_tx_obj*) ; 
 scalar_t__ FUNC4 (struct be_adapter*,struct sk_buff**) ; 
 size_t FUNC5 (struct be_adapter*,struct be_tx_obj*,struct sk_buff*,struct be_wrb_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct be_adapter*,struct be_tx_obj*) ; 
 struct sk_buff* FUNC7 (struct be_adapter*,struct sk_buff*,struct be_wrb_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct be_adapter* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 size_t FUNC13 (struct sk_buff*) ; 
 TYPE_1__* FUNC14 (struct be_tx_obj*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct sk_buff *skb, struct net_device *netdev)
{
	struct be_adapter *adapter = FUNC9(netdev);
	u16 q_idx = FUNC13(skb);
	struct be_tx_obj *txo = &adapter->tx_obj[q_idx];
	struct be_wrb_params wrb_params = { 0 };
	bool flush = !FUNC10();
	u16 wrb_cnt;

	skb = FUNC7(adapter, skb, &wrb_params);
	if (FUNC15(!skb))
		goto drop;

	FUNC2(adapter, skb, &wrb_params);

	wrb_cnt = FUNC5(adapter, txo, skb, &wrb_params);
	if (FUNC15(!wrb_cnt)) {
		FUNC8(skb);
		goto drop;
	}

	/* if os2bmc is enabled and if the pkt is destined to bmc,
	 * enqueue the pkt a 2nd time with mgmt bit set.
	 */
	if (FUNC4(adapter, &skb)) {
		FUNC0(wrb_params.features, OS2BMC, 1);
		wrb_cnt = FUNC5(adapter, txo, skb, &wrb_params);
		if (FUNC15(!wrb_cnt))
			goto drop;
		else
			FUNC12(skb);
	}

	if (FUNC3(txo)) {
		FUNC11(netdev, q_idx);
		FUNC14(txo)->tx_stops++;
	}

	if (flush || FUNC1(netdev, q_idx))
		FUNC6(adapter, txo);

	return NETDEV_TX_OK;
drop:
	FUNC14(txo)->tx_drv_drops++;
	/* Flush the already enqueued tx requests */
	if (flush && txo->pend_wrb_cnt)
		FUNC6(adapter, txo);

	return NETDEV_TX_OK;
}