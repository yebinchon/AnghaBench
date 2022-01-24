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
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned long) ; 

__attribute__((used)) static __inline__ struct sk_buff *FUNC4(struct net_device *dev, int size,
						gfp_t gfp_flags)
{
	struct sk_buff *skb = FUNC1(size + 64, gfp_flags);

	if (FUNC2(skb)) {
		unsigned long offset = FUNC0(skb->data);
		FUNC3(skb, offset);
	}
	return skb;
}