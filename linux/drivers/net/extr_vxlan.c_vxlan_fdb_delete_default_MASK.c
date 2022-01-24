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
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int /*<<< orphan*/ * hash_lock; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct vxlan_fdb* FUNC0 (struct vxlan_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_zeros_mac ; 
 size_t FUNC1 (struct vxlan_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vxlan_dev*,struct vxlan_fdb*,int,int) ; 

__attribute__((used)) static void FUNC5(struct vxlan_dev *vxlan, __be32 vni)
{
	struct vxlan_fdb *f;
	u32 hash_index = FUNC1(vxlan, all_zeros_mac, vni);

	FUNC2(&vxlan->hash_lock[hash_index]);
	f = FUNC0(vxlan, all_zeros_mac, vni);
	if (f)
		FUNC4(vxlan, f, true, true);
	FUNC3(&vxlan->hash_lock[hash_index]);
}