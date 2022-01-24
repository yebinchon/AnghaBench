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
typedef  union vxlan_addr {int dummy; } vxlan_addr ;
typedef  int /*<<< orphan*/  u8 ;
struct vxlan_rdst {int dummy; } ;
struct vxlan_fdb {int dummy; } ;
struct TYPE_2__ {scalar_t__ addrmax; } ;
struct vxlan_dev {scalar_t__ addrcnt; int /*<<< orphan*/  dev; TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct vxlan_fdb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,union vxlan_addr*) ; 
 struct vxlan_fdb* FUNC2 (struct vxlan_dev*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vxlan_fdb*,union vxlan_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vxlan_rdst**) ; 

__attribute__((used)) static int FUNC4(struct vxlan_dev *vxlan,
			    const u8 *mac, union vxlan_addr *ip,
			    __u16 state, __be16 port, __be32 src_vni,
			    __be32 vni, __u32 ifindex, __u16 ndm_flags,
			    struct vxlan_fdb **fdb)
{
	struct vxlan_rdst *rd = NULL;
	struct vxlan_fdb *f;
	int rc;

	if (vxlan->cfg.addrmax &&
	    vxlan->addrcnt >= vxlan->cfg.addrmax)
		return -ENOSPC;

	FUNC1(vxlan->dev, "add %pM -> %pIS\n", mac, ip);
	f = FUNC2(vxlan, mac, state, src_vni, ndm_flags);
	if (!f)
		return -ENOMEM;

	rc = FUNC3(f, ip, port, vni, ifindex, &rd);
	if (rc < 0) {
		FUNC0(f);
		return rc;
	}

	*fdb = f;

	return 0;
}