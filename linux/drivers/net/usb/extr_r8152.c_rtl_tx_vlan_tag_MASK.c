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
struct tx_desc {int /*<<< orphan*/  opts2; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int TX_VLAN_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct tx_desc *desc, struct sk_buff *skb)
{
	if (FUNC2(skb)) {
		u32 opts2;

		opts2 = TX_VLAN_TAG | FUNC3(FUNC1(skb));
		desc->opts2 |= FUNC0(opts2);
	}
}