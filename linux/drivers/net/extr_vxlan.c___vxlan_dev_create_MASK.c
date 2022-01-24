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
struct vxlan_rdst {struct net_device* remote_dev; int /*<<< orphan*/  remote_vni; scalar_t__ remote_ifindex; int /*<<< orphan*/  remote_ip; } ;
struct vxlan_net {int /*<<< orphan*/  vxlan_list; } ;
struct vxlan_fdb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst_port; } ;
struct vxlan_dev {int /*<<< orphan*/  next; TYPE_1__ cfg; struct vxlan_rdst default_dst; } ;
struct vxlan_config {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/ * ethtool_ops; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NTF_SELF ; 
 int NUD_PERMANENT ; 
 int NUD_REACHABLE ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_fdb*) ; 
 int /*<<< orphan*/  all_zeros_mac ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_fdb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vxlan_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct vxlan_dev* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*,struct net_device*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct net*,struct net_device*,struct vxlan_config*,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  vxlan_ethtool_ops ; 
 int FUNC13 (struct vxlan_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct vxlan_fdb**) ; 
 int /*<<< orphan*/  FUNC14 (struct vxlan_dev*,struct vxlan_fdb*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct vxlan_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vxlan_fdb*) ; 
 int FUNC16 (struct vxlan_dev*,struct vxlan_fdb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  vxlan_net_id ; 

__attribute__((used)) static int FUNC17(struct net *net, struct net_device *dev,
			      struct vxlan_config *conf,
			      struct netlink_ext_ack *extack)
{
	struct vxlan_net *vn = FUNC4(net, vxlan_net_id);
	struct vxlan_dev *vxlan = FUNC5(dev);
	struct net_device *remote_dev = NULL;
	struct vxlan_fdb *f = NULL;
	bool unregister = false;
	struct vxlan_rdst *dst;
	int err;

	dst = &vxlan->default_dst;
	err = FUNC12(net, dev, conf, false, extack);
	if (err)
		return err;

	dev->ethtool_ops = &vxlan_ethtool_ops;

	/* create an fdb entry for a valid default destination */
	if (!FUNC11(&dst->remote_ip)) {
		err = FUNC13(vxlan, all_zeros_mac,
				       &dst->remote_ip,
				       NUD_REACHABLE | NUD_PERMANENT,
				       vxlan->cfg.dst_port,
				       dst->remote_vni,
				       dst->remote_vni,
				       dst->remote_ifindex,
				       NTF_SELF, &f);
		if (err)
			return err;
	}

	err = FUNC8(dev);
	if (err)
		goto errout;
	unregister = true;

	if (dst->remote_ifindex) {
		remote_dev = FUNC0(net, dst->remote_ifindex);
		if (!remote_dev)
			goto errout;

		err = FUNC6(remote_dev, dev, extack);
		if (err)
			goto errout;
	}

	err = FUNC9(dev, NULL);
	if (err)
		goto unlink;

	if (f) {
		FUNC15(vxlan, all_zeros_mac, dst->remote_vni, f);

		/* notify default fdb entry */
		err = FUNC16(vxlan, f, FUNC2(f),
				       RTM_NEWNEIGH, true, extack);
		if (err) {
			FUNC14(vxlan, f, false, false);
			if (remote_dev)
				FUNC7(remote_dev, dev);
			goto unregister;
		}
	}

	FUNC3(&vxlan->next, &vn->vxlan_list);
	if (remote_dev)
		dst->remote_dev = remote_dev;
	return 0;
unlink:
	if (remote_dev)
		FUNC7(remote_dev, dev);
errout:
	/* unregister_netdevice() destroys the default FDB entry with deletion
	 * notification. But the addition notification was not sent yet, so
	 * destroy the entry by hand here.
	 */
	if (f)
		FUNC1(f);
unregister:
	if (unregister)
		FUNC10(dev);
	return err;
}