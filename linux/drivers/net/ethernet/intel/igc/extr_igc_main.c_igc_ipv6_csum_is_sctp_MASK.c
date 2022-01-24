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
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static inline bool FUNC2(struct sk_buff *skb)
{
	unsigned int offset = 0;

	FUNC0(skb, &offset, IPPROTO_SCTP, NULL, NULL);

	return offset == FUNC1(skb);
}