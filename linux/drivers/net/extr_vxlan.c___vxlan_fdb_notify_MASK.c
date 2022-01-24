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
struct vxlan_rdst {int dummy; } ;
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int /*<<< orphan*/  dev; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RTNLGRP_NEIGH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct sk_buff*,struct vxlan_dev*,struct vxlan_fdb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct vxlan_rdst*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct vxlan_dev *vxlan, struct vxlan_fdb *fdb,
			       struct vxlan_rdst *rd, int type)
{
	struct net *net = FUNC1(vxlan->dev);
	struct sk_buff *skb;
	int err = -ENOBUFS;

	skb = FUNC3(FUNC7(), GFP_ATOMIC);
	if (skb == NULL)
		goto errout;

	err = FUNC6(skb, vxlan, fdb, 0, 0, type, 0, rd);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in vxlan_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC2(skb);
		goto errout;
	}

	FUNC4(skb, net, 0, RTNLGRP_NEIGH, NULL, GFP_ATOMIC);
	return;
errout:
	if (err < 0)
		FUNC5(net, RTNLGRP_NEIGH, err);
}