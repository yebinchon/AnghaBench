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
typedef  int /*<<< orphan*/  uint ;
struct sk_buff {scalar_t__ priority; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC2(uint len)
{
	struct sk_buff *skb;

	skb = FUNC0(len);
	if (skb) {
		FUNC1(skb, len);
		skb->priority = 0;
	}

	return skb;
}