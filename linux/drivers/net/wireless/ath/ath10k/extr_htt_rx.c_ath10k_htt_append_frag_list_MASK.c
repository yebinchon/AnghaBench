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
struct sk_buff {unsigned int data_len; unsigned int len; } ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC1(struct sk_buff *skb_head,
					       struct sk_buff *frag_list,
					       unsigned int frag_len)
{
	FUNC0(skb_head)->frag_list = frag_list;
	skb_head->data_len = frag_len;
	skb_head->len += skb_head->data_len;
}