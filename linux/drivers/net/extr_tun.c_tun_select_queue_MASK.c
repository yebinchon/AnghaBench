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
struct tun_struct {int /*<<< orphan*/  steering_prog; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct tun_struct* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct tun_struct*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct tun_struct*,struct sk_buff*) ; 

__attribute__((used)) static u16 FUNC6(struct net_device *dev, struct sk_buff *skb,
			    struct net_device *sb_dev)
{
	struct tun_struct *tun = FUNC0(dev);
	u16 ret;

	FUNC2();
	if (FUNC1(tun->steering_prog))
		ret = FUNC5(tun, skb);
	else
		ret = FUNC4(tun, skb);
	FUNC3();

	return ret;
}