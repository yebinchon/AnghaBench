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
struct sk_buff {int dummy; } ;
struct RxDesc {int /*<<< orphan*/  opts2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int RxVlanTag ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct RxDesc *desc, struct sk_buff *skb)
{
	u32 opts2 = FUNC2(desc->opts2);

	if (opts2 & RxVlanTag)
		FUNC0(skb, FUNC1(ETH_P_8021Q), FUNC3(opts2 & 0xffff));
}