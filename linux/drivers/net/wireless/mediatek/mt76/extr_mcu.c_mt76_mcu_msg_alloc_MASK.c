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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

struct sk_buff *
FUNC3(const void *data, int head_len,
		   int data_len, int tail_len)
{
	struct sk_buff *skb;

	skb = FUNC0(head_len + data_len + tail_len,
			GFP_KERNEL);
	if (!skb)
		return NULL;

	FUNC2(skb, head_len);
	if (data && data_len)
		FUNC1(skb, data, data_len);

	return skb;
}