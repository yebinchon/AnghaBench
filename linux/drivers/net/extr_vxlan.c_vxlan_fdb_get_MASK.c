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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vxlan_fdb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  remote_vni; } ;
struct vxlan_dev {TYPE_1__ default_dst; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOENT ; 
 size_t NDA_VNI ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 struct vxlan_fdb* FUNC1 (struct vxlan_dev*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_fdb*) ; 
 struct vxlan_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct sk_buff*,struct vxlan_dev*,struct vxlan_fdb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb,
			 struct nlattr *tb[],
			 struct net_device *dev,
			 const unsigned char *addr,
			 u16 vid, u32 portid, u32 seq,
			 struct netlink_ext_ack *extack)
{
	struct vxlan_dev *vxlan = FUNC4(dev);
	struct vxlan_fdb *f;
	__be32 vni;
	int err;

	if (tb[NDA_VNI])
		vni = FUNC2(FUNC5(tb[NDA_VNI]));
	else
		vni = vxlan->default_dst.remote_vni;

	FUNC6();

	f = FUNC1(vxlan, addr, vni);
	if (!f) {
		FUNC0(extack, "Fdb entry not found");
		err = -ENOENT;
		goto errout;
	}

	err = FUNC8(skb, vxlan, f, portid, seq,
			     RTM_NEWNEIGH, 0, FUNC3(f));
errout:
	FUNC7();
	return err;
}