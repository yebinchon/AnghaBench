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
typedef  int u64 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cas {struct sk_buff_head* rx_flows; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int const) ; 
 int N_RX_FLOWS ; 
 int const RX_COMP1_RELEASE_FLOW ; 
 int /*<<< orphan*/  RX_COMP3_FLOWID ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC4(struct cas *cp, const u64 *words,
				   struct sk_buff *skb)
{
	int flowid = FUNC0(RX_COMP3_FLOWID, words[2]) & (N_RX_FLOWS - 1);
	struct sk_buff_head *flow = &cp->rx_flows[flowid];

	/* this is protected at a higher layer, so no need to
	 * do any additional locking here. stick the buffer
	 * at the end.
	 */
	FUNC2(flow, skb);
	if (words[0] & RX_COMP1_RELEASE_FLOW) {
		while ((skb = FUNC1(flow))) {
			FUNC3(skb);
		}
	}
}