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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct igb_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_WUPL ; 
 int E1000_WUPL_MASK ; 
 int E1000_WUPM_BYTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct sk_buff* FUNC3 (struct net_device*,int) ; 
 struct igb_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC9(struct net_device *netdev)
{
	struct igb_adapter *adapter = FUNC4(netdev);
	struct e1000_hw *hw = &adapter->hw;
	struct sk_buff *skb;
	u32 wupl;

	wupl = FUNC6(E1000_WUPL) & E1000_WUPL_MASK;

	/* WUPM stores only the first 128 bytes of the wake packet.
	 * Read the packet only if we have the whole thing.
	 */
	if ((wupl == 0) || (wupl > E1000_WUPM_BYTES))
		return;

	skb = FUNC3(netdev, E1000_WUPM_BYTES);
	if (!skb)
		return;

	FUNC8(skb, wupl);

	/* Ensure reads are 32-bit aligned */
	wupl = FUNC7(wupl, 4);

	FUNC2(skb->data, hw->hw_addr + FUNC0(0), wupl);

	skb->protocol = FUNC1(skb, netdev);
	FUNC5(skb);
}