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
struct sk_buff {size_t len; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,size_t) ; 
 struct sk_buff* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct sk_buff *skb, size_t len,
					       gfp_t gfp)
{
	if (FUNC4(!FUNC5(skb))) {
		FUNC0(skb->len < len);
		FUNC2(skb, len);
		FUNC6(skb);
	} else {
		skb = FUNC3(len, gfp);
		if (skb)
			FUNC1(skb, len);
	}
	return skb;
}