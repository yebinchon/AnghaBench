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
struct sk_buff {int dummy; } ;
struct rx_desc {int desc_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  DescTag ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline void FUNC6(struct sk_buff *skb, struct rx_desc *desc,
				     int data_size)
{
	FUNC2();
	if (FUNC5(desc->desc_length & FUNC1(DescTag))) {
		u16 vlan_tci;

		vlan_tci = FUNC4(skb, data_size);
		FUNC0(skb, FUNC3(ETH_P_8021Q), vlan_tci);
	}
}