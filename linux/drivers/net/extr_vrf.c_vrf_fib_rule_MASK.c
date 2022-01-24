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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_flags; } ;
struct net_device {int dummy; } ;
struct fib_rule_hdr {int /*<<< orphan*/  action; scalar_t__ family; } ;
typedef  scalar_t__ __u8 ;
struct TYPE_2__ {int /*<<< orphan*/  rtnl; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EEXIST ; 
 int EMSGSIZE ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FIB_RULE_PREF ; 
 int /*<<< orphan*/  FRA_L3MDEV ; 
 int /*<<< orphan*/  FRA_PRIORITY ; 
 int /*<<< orphan*/  FRA_PROTOCOL ; 
 int /*<<< orphan*/  FR_ACT_TO_TBL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLM_F_EXCL ; 
 scalar_t__ RTNL_FAMILY_IP6MR ; 
 int RTPROT_KERNEL ; 
 TYPE_1__* FUNC0 (struct net_device const*) ; 
 int FUNC1 (struct sk_buff*,struct nlmsghdr*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff*,struct nlmsghdr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct fib_rule_hdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct fib_rule_hdr* FUNC7 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(const struct net_device *dev, __u8 family, bool add_it)
{
	struct fib_rule_hdr *frh;
	struct nlmsghdr *nlh;
	struct sk_buff *skb;
	int err;

	if ((family == AF_INET6 || family == RTNL_FAMILY_IP6MR) &&
	    !FUNC3())
		return 0;

	skb = FUNC10(FUNC12(), GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	nlh = FUNC11(skb, 0, 0, 0, sizeof(*frh), 0);
	if (!nlh)
		goto nla_put_failure;

	/* rule only needs to appear once */
	nlh->nlmsg_flags |= NLM_F_EXCL;

	frh = FUNC7(nlh);
	FUNC4(frh, 0, sizeof(*frh));
	frh->family = family;
	frh->action = FR_ACT_TO_TBL;

	if (FUNC6(skb, FRA_PROTOCOL, RTPROT_KERNEL))
		goto nla_put_failure;

	if (FUNC6(skb, FRA_L3MDEV, 1))
		goto nla_put_failure;

	if (FUNC5(skb, FRA_PRIORITY, FIB_RULE_PREF))
		goto nla_put_failure;

	FUNC8(skb, nlh);

	/* fib_nl_{new,del}rule handling looks for net from skb->sk */
	skb->sk = FUNC0(dev)->rtnl;
	if (add_it) {
		err = FUNC2(skb, nlh, NULL);
		if (err == -EEXIST)
			err = 0;
	} else {
		err = FUNC1(skb, nlh, NULL);
		if (err == -ENOENT)
			err = 0;
	}
	FUNC9(skb);

	return err;

nla_put_failure:
	FUNC9(skb);

	return -EMSGSIZE;
}