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
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct p54_tim {int count; int /*<<< orphan*/ * entry; } ;
struct p54_common {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  P54_CONTROL_TYPE_TIM ; 
 int /*<<< orphan*/  P54_HDR_FLAG_CONTROL_OPSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (struct p54_common*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct p54_common*,struct sk_buff*) ; 
 struct p54_tim* FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct p54_common *priv, u16 aid, bool set)
{
	struct sk_buff *skb;
	struct p54_tim *tim;

	skb = FUNC1(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*tim),
			    P54_CONTROL_TYPE_TIM, GFP_ATOMIC);
	if (FUNC4(!skb))
		return -ENOMEM;

	tim = FUNC3(skb, sizeof(*tim));
	tim->count = 1;
	tim->entry[0] = FUNC0(set ? (aid | 0x8000) : aid);
	FUNC2(priv, skb);
	return 0;
}