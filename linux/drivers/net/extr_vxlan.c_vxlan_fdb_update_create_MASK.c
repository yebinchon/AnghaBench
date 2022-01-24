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
typedef  union vxlan_addr {int dummy; } vxlan_addr ;
typedef  int /*<<< orphan*/  u8 ;
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int /*<<< orphan*/  dev; } ;
struct netlink_ext_ack {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int NLM_F_REPLACE ; 
 int NTF_USE ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 int /*<<< orphan*/  FUNC0 (struct vxlan_fdb*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,union vxlan_addr*) ; 
 int FUNC4 (struct vxlan_dev*,int /*<<< orphan*/  const*,union vxlan_addr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct vxlan_fdb**) ; 
 int /*<<< orphan*/  FUNC5 (struct vxlan_dev*,struct vxlan_fdb*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vxlan_dev*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct vxlan_fdb*) ; 
 int FUNC7 (struct vxlan_dev*,struct vxlan_fdb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC8(struct vxlan_dev *vxlan,
				   const u8 *mac, union vxlan_addr *ip,
				   __u16 state, __u16 flags,
				   __be16 port, __be32 src_vni, __be32 vni,
				   __u32 ifindex, __u16 ndm_flags,
				   bool swdev_notify,
				   struct netlink_ext_ack *extack)
{
	__u16 fdb_flags = (ndm_flags & ~NTF_USE);
	struct vxlan_fdb *f;
	int rc;

	/* Disallow replace to add a multicast entry */
	if ((flags & NLM_F_REPLACE) &&
	    (FUNC1(mac) || FUNC2(mac)))
		return -EOPNOTSUPP;

	FUNC3(vxlan->dev, "add %pM -> %pIS\n", mac, ip);
	rc = FUNC4(vxlan, mac, ip, state, port, src_vni,
			      vni, ifindex, fdb_flags, &f);
	if (rc < 0)
		return rc;

	FUNC6(vxlan, mac, src_vni, f);
	rc = FUNC7(vxlan, f, FUNC0(f), RTM_NEWNEIGH,
			      swdev_notify, extack);
	if (rc)
		goto err_notify;

	return 0;

err_notify:
	FUNC5(vxlan, f, false, false);
	return rc;
}