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
typedef  int /*<<< orphan*/  u8 ;
struct vxlan_fdb {int /*<<< orphan*/  hlist; } ;
struct vxlan_dev {int /*<<< orphan*/  addrcnt; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_dev*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vxlan_dev *vxlan, const u8 *mac,
			     __be32 src_vni, struct vxlan_fdb *f)
{
	++vxlan->addrcnt;
	FUNC0(&f->hlist,
			   FUNC1(vxlan, mac, src_vni));
}