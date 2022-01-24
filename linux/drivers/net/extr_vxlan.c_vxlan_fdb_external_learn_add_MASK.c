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
typedef  size_t u32 ;
struct vxlan_dev {int /*<<< orphan*/ * hash_lock; } ;
struct switchdev_notifier_vxlan_fdb_info {int /*<<< orphan*/  remote_ifindex; int /*<<< orphan*/  remote_vni; int /*<<< orphan*/  vni; int /*<<< orphan*/  remote_port; int /*<<< orphan*/  remote_ip; int /*<<< orphan*/  eth_addr; int /*<<< orphan*/  info; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NLM_F_CREATE ; 
 int NLM_F_REPLACE ; 
 int NTF_EXT_LEARNED ; 
 int NTF_SELF ; 
 int NTF_USE ; 
 int /*<<< orphan*/  NUD_REACHABLE ; 
 size_t FUNC0 (struct vxlan_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vxlan_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct netlink_ext_ack* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct vxlan_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct netlink_ext_ack*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev,
			     struct switchdev_notifier_vxlan_fdb_info *fdb_info)
{
	struct vxlan_dev *vxlan = FUNC1(dev);
	struct netlink_ext_ack *extack;
	u32 hash_index;
	int err;

	hash_index = FUNC0(vxlan, fdb_info->eth_addr, fdb_info->vni);
	extack = FUNC4(&fdb_info->info);

	FUNC2(&vxlan->hash_lock[hash_index]);
	err = FUNC5(vxlan, fdb_info->eth_addr, &fdb_info->remote_ip,
			       NUD_REACHABLE,
			       NLM_F_CREATE | NLM_F_REPLACE,
			       fdb_info->remote_port,
			       fdb_info->vni,
			       fdb_info->remote_vni,
			       fdb_info->remote_ifindex,
			       NTF_USE | NTF_SELF | NTF_EXT_LEARNED,
			       false, extack);
	FUNC3(&vxlan->hash_lock[hash_index]);

	return err;
}