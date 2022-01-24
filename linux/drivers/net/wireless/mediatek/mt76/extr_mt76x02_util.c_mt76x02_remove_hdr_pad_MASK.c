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
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

void FUNC3(struct sk_buff *skb, int len)
{
	int hdrlen;

	if (!len)
		return;

	hdrlen = FUNC0(skb);
	FUNC1(skb->data + len, skb->data, hdrlen);
	FUNC2(skb, len);
}