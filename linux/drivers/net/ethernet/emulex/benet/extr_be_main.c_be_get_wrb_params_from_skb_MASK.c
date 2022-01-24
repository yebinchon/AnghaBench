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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct be_wrb_params {int /*<<< orphan*/  features; int /*<<< orphan*/  vlan_tag; int /*<<< orphan*/  lso_mss; } ;
struct be_adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  CRC ; 
 int /*<<< orphan*/  IPCS ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  LSO ; 
 int /*<<< orphan*/  LSO6 ; 
 int /*<<< orphan*/  TCPCS ; 
 int /*<<< orphan*/  UDPCS ; 
 int /*<<< orphan*/  VLAN ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct be_adapter *adapter,
				       struct sk_buff *skb,
				       struct be_wrb_params *wrb_params)
{
	u16 proto;

	if (FUNC5(skb)) {
		FUNC0(wrb_params->features, LSO, 1);
		wrb_params->lso_mss = FUNC7(skb)->gso_size;
		if (FUNC6(skb) && !FUNC2(adapter))
			FUNC0(wrb_params->features, LSO6, 1);
	} else if (skb->ip_summed == CHECKSUM_PARTIAL) {
		if (skb->encapsulation) {
			FUNC0(wrb_params->features, IPCS, 1);
			proto = FUNC3(skb);
		} else {
			proto = FUNC4(skb);
		}
		if (proto == IPPROTO_TCP)
			FUNC0(wrb_params->features, TCPCS, 1);
		else if (proto == IPPROTO_UDP)
			FUNC0(wrb_params->features, UDPCS, 1);
	}

	if (FUNC8(skb)) {
		FUNC0(wrb_params->features, VLAN, 1);
		wrb_params->vlan_tag = FUNC1(adapter, skb);
	}

	FUNC0(wrb_params->features, CRC, 1);
}