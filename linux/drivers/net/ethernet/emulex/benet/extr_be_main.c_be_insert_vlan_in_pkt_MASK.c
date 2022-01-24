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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct be_wrb_params {int /*<<< orphan*/  features; } ;
struct be_adapter {scalar_t__ qnq_vid; scalar_t__ pvid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  VLAN_SKIP_HW ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct be_adapter*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct be_adapter*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct be_adapter *adapter,
					     struct sk_buff *skb,
					     struct be_wrb_params
					     *wrb_params)
{
	bool insert_vlan = false;
	u16 vlan_tag = 0;

	skb = FUNC5(skb, GFP_ATOMIC);
	if (FUNC7(!skb))
		return skb;

	if (FUNC6(skb)) {
		vlan_tag = FUNC2(adapter, skb);
		insert_vlan = true;
	}

	if (FUNC4(adapter) && adapter->pvid) {
		if (!insert_vlan) {
			vlan_tag = adapter->pvid;
			insert_vlan = true;
		}
		/* f/w workaround to set skip_hw_vlan = 1, informs the F/W to
		 * skip VLAN insertion
		 */
		FUNC0(wrb_params->features, VLAN_SKIP_HW, 1);
	}

	if (insert_vlan) {
		skb = FUNC8(skb, FUNC3(ETH_P_8021Q),
						vlan_tag);
		if (FUNC7(!skb))
			return skb;
		FUNC1(skb);
	}

	/* Insert the outer VLAN, if any */
	if (adapter->qnq_vid) {
		vlan_tag = adapter->qnq_vid;
		skb = FUNC8(skb, FUNC3(ETH_P_8021Q),
						vlan_tag);
		if (FUNC7(!skb))
			return skb;
		FUNC0(wrb_params->features, VLAN_SKIP_HW, 1);
	}

	return skb;
}