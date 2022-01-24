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
struct vxlan_rdst {int /*<<< orphan*/  rcu; int /*<<< orphan*/  list; } ;
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTM_DELNEIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vxlan_dst_free ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_dev*,struct vxlan_fdb*,struct vxlan_rdst*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vxlan_dev *vxlan, struct vxlan_fdb *f,
				  struct vxlan_rdst *rd, bool swdev_notify)
{
	FUNC1(&rd->list);
	FUNC2(vxlan, f, rd, RTM_DELNEIGH, swdev_notify, NULL);
	FUNC0(&rd->rcu, vxlan_dst_free);
}