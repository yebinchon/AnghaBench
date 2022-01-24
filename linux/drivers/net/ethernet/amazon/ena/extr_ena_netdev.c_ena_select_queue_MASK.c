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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static u16 FUNC3(struct net_device *dev, struct sk_buff *skb,
			    struct net_device *sb_dev)
{
	u16 qid;
	/* we suspect that this is good for in--kernel network services that
	 * want to loop incoming skb rx to tx in normal user generated traffic,
	 * most probably we will not get to this
	 */
	if (FUNC2(skb))
		qid = FUNC1(skb);
	else
		qid = FUNC0(dev, skb, NULL);

	return qid;
}