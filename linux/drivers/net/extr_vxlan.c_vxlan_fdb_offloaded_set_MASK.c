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
struct vxlan_rdst {int /*<<< orphan*/  offloaded; } ;
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int /*<<< orphan*/ * hash_lock; } ;
struct switchdev_notifier_vxlan_fdb_info {int /*<<< orphan*/  offloaded; int /*<<< orphan*/  remote_ifindex; int /*<<< orphan*/  remote_vni; int /*<<< orphan*/  remote_port; int /*<<< orphan*/  remote_ip; int /*<<< orphan*/  vni; int /*<<< orphan*/  eth_addr; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct vxlan_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vxlan_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vxlan_rdst* FUNC4 (struct vxlan_fdb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vxlan_fdb* FUNC5 (struct vxlan_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct net_device *dev,
			struct switchdev_notifier_vxlan_fdb_info *fdb_info)
{
	struct vxlan_dev *vxlan = FUNC1(dev);
	struct vxlan_rdst *rdst;
	struct vxlan_fdb *f;
	u32 hash_index;

	hash_index = FUNC0(vxlan, fdb_info->eth_addr, fdb_info->vni);

	FUNC2(&vxlan->hash_lock[hash_index]);

	f = FUNC5(vxlan, fdb_info->eth_addr, fdb_info->vni);
	if (!f)
		goto out;

	rdst = FUNC4(f, &fdb_info->remote_ip,
				   fdb_info->remote_port,
				   fdb_info->remote_vni,
				   fdb_info->remote_ifindex);
	if (!rdst)
		goto out;

	rdst->offloaded = fdb_info->offloaded;

out:
	FUNC3(&vxlan->hash_lock[hash_index]);
}