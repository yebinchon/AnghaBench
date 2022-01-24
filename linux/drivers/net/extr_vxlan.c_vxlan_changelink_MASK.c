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
typedef  size_t u32 ;
struct vxlan_rdst {struct net_device* remote_dev; int /*<<< orphan*/  remote_ifindex; int /*<<< orphan*/  remote_vni; int /*<<< orphan*/  remote_ip; } ;
struct TYPE_2__ {scalar_t__ age_interval; int /*<<< orphan*/  dst_port; } ;
struct vxlan_dev {int /*<<< orphan*/  net; int /*<<< orphan*/  age_timer; TYPE_1__ cfg; int /*<<< orphan*/ * hash_lock; struct vxlan_rdst default_dst; } ;
struct vxlan_config {scalar_t__ age_interval; int /*<<< orphan*/  remote_ifindex; int /*<<< orphan*/  vni; int /*<<< orphan*/  remote_ip; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NLM_F_APPEND ; 
 int NLM_F_CREATE ; 
 int /*<<< orphan*/  NTF_SELF ; 
 int NUD_PERMANENT ; 
 int NUD_REACHABLE ; 
 int /*<<< orphan*/  FUNC0 (struct vxlan_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  all_zeros_mac ; 
 size_t FUNC1 (struct vxlan_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct net_device*,struct net_device*) ; 
 int FUNC5 (struct net_device*,struct net_device*,struct net_device*,struct netlink_ext_ack*) ; 
 struct vxlan_dev* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,struct vxlan_config*,struct net_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct vxlan_config*,struct net_device**,struct vxlan_dev*,struct netlink_ext_ack*) ; 
 int FUNC14 (struct vxlan_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct netlink_ext_ack*) ; 
 int FUNC15 (struct nlattr**,struct nlattr**,struct net_device*,struct vxlan_config*,int,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC16(struct net_device *dev, struct nlattr *tb[],
			    struct nlattr *data[],
			    struct netlink_ext_ack *extack)
{
	struct vxlan_dev *vxlan = FUNC6(dev);
	struct net_device *lowerdev;
	struct vxlan_config conf;
	struct vxlan_rdst *dst;
	int err;

	dst = &vxlan->default_dst;
	err = FUNC15(tb, data, dev, &conf, true, extack);
	if (err)
		return err;

	err = FUNC13(vxlan->net, &conf, &lowerdev,
				    vxlan, extack);
	if (err)
		return err;

	if (dst->remote_dev == lowerdev)
		lowerdev = NULL;

	err = FUNC5(dst->remote_dev, lowerdev, dev,
					     extack);
	if (err)
		return err;

	/* handle default dst entry */
	if (!FUNC11(&conf.remote_ip, &dst->remote_ip)) {
		u32 hash_index = FUNC1(vxlan, all_zeros_mac, conf.vni);

		FUNC8(&vxlan->hash_lock[hash_index]);
		if (!FUNC10(&conf.remote_ip)) {
			err = FUNC14(vxlan, all_zeros_mac,
					       &conf.remote_ip,
					       NUD_REACHABLE | NUD_PERMANENT,
					       NLM_F_APPEND | NLM_F_CREATE,
					       vxlan->cfg.dst_port,
					       conf.vni, conf.vni,
					       conf.remote_ifindex,
					       NTF_SELF, true, extack);
			if (err) {
				FUNC9(&vxlan->hash_lock[hash_index]);
				FUNC3(dst->remote_dev,
							     lowerdev, dev);
				return err;
			}
		}
		if (!FUNC10(&dst->remote_ip))
			FUNC0(vxlan, all_zeros_mac,
					   dst->remote_ip,
					   vxlan->cfg.dst_port,
					   dst->remote_vni,
					   dst->remote_vni,
					   dst->remote_ifindex,
					   true);
		FUNC9(&vxlan->hash_lock[hash_index]);
	}

	if (conf.age_interval != vxlan->cfg.age_interval)
		FUNC2(&vxlan->age_timer, jiffies);

	FUNC4(dst->remote_dev, lowerdev, dev);
	if (lowerdev && lowerdev != dst->remote_dev) {
		dst->remote_dev = lowerdev;
		FUNC7(lowerdev);
	}
	FUNC12(dev, &conf, lowerdev, vxlan->net, true);
	return 0;
}