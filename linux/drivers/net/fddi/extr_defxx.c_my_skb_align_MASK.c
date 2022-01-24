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
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb, int n)
{
	unsigned long x = (unsigned long)skb->data;
	unsigned long v;

	v = FUNC0(x, n);	/* Where we want to be */

	FUNC1(skb, v - x);
}