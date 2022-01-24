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
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {unsigned int nr_frags; } ;

/* Variables and functions */
 scalar_t__ WR_LEN ; 
 unsigned int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 TYPE_1__* FUNC2 (struct sk_buff const*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*) ; 
 scalar_t__ FUNC4 (struct sk_buff const*) ; 
 int FUNC5 (struct sk_buff const*) ; 

__attribute__((used)) static inline unsigned int FUNC6(const struct sk_buff *skb)
{
	unsigned int flits, cnt;

	if (skb->len <= WR_LEN)
		return 1;	/* packet fits as immediate data */

	flits = FUNC5(skb) / 8;	/* headers */
	cnt = FUNC2(skb)->nr_frags;
	if (FUNC3(skb) != FUNC4(skb))
		cnt++;
	return FUNC0(flits + FUNC1(cnt));
}