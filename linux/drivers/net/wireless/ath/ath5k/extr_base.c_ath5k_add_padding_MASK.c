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
struct sk_buff {int len; scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb)
{
	int padpos = FUNC0(skb);
	int padsize = padpos & 3;

	if (padsize && skb->len > padpos) {

		if (FUNC2(skb) < padsize)
			return -1;

		FUNC3(skb, padsize);
		FUNC1(skb->data, skb->data + padsize, padpos);
		return padsize;
	}

	return 0;
}