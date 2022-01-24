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
struct skb_shared_info {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct sk_buff* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC4(void *head, int headroom, int len,
				      int buflen)
{
	struct sk_buff *skb;

	if (!buflen) {
		buflen = FUNC0(headroom + len) +
			 FUNC0(sizeof(struct skb_shared_info));
	}
	skb = FUNC1(head, buflen);
	if (!skb)
		return NULL;

	FUNC3(skb, headroom);
	FUNC2(skb, len);

	return skb;
}