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
struct sk_buff {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static inline struct sk_buff *FUNC3(unsigned int length, gfp_t gfp_flags)
{
	struct sk_buff *skb;

	skb = FUNC1(length + 64, gfp_flags);
	if(skb) {
		int offset = FUNC0(skb->data);

		if(offset)
			FUNC2(skb, offset);
	}
	return skb;
}