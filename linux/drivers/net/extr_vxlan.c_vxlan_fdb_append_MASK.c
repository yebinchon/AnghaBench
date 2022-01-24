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
struct vxlan_rdst {int offloaded; int /*<<< orphan*/  list; int /*<<< orphan*/  remote_ifindex; int /*<<< orphan*/  remote_vni; int /*<<< orphan*/  remote_port; union vxlan_addr remote_ip; int /*<<< orphan*/  dst_cache; } ;
struct vxlan_fdb {int /*<<< orphan*/  remotes; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_rdst*) ; 
 struct vxlan_rdst* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vxlan_rdst* FUNC4 (struct vxlan_fdb*,union vxlan_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vxlan_fdb *f,
			    union vxlan_addr *ip, __be16 port, __be32 vni,
			    __u32 ifindex, struct vxlan_rdst **rdp)
{
	struct vxlan_rdst *rd;

	rd = FUNC4(f, ip, port, vni, ifindex);
	if (rd)
		return 0;

	rd = FUNC2(sizeof(*rd), GFP_ATOMIC);
	if (rd == NULL)
		return -ENOBUFS;

	if (FUNC0(&rd->dst_cache, GFP_ATOMIC)) {
		FUNC1(rd);
		return -ENOBUFS;
	}

	rd->remote_ip = *ip;
	rd->remote_port = port;
	rd->offloaded = false;
	rd->remote_vni = vni;
	rd->remote_ifindex = ifindex;

	FUNC3(&rd->list, &f->remotes);

	*rdp = rd;
	return 1;
}