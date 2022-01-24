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
struct vxlan_sock {int flags; TYPE_1__* sock; int /*<<< orphan*/  hlist; int /*<<< orphan*/  refcnt; } ;
struct vxlan_net {int /*<<< orphan*/  sock_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDP_TUNNEL_TYPE_VXLAN ; 
 int /*<<< orphan*/  UDP_TUNNEL_TYPE_VXLAN_GPE ; 
 int VXLAN_F_GPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vxlan_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlan_net_id ; 

__attribute__((used)) static bool FUNC7(struct vxlan_sock *vs)
{
	struct vxlan_net *vn;

	if (!vs)
		return false;
	if (!FUNC2(&vs->refcnt))
		return false;

	vn = FUNC1(FUNC3(vs->sock->sk), vxlan_net_id);
	FUNC4(&vn->sock_lock);
	FUNC0(&vs->hlist);
	FUNC6(vs->sock,
				      (vs->flags & VXLAN_F_GPE) ?
				      UDP_TUNNEL_TYPE_VXLAN_GPE :
				      UDP_TUNNEL_TYPE_VXLAN);
	FUNC5(&vn->sock_lock);

	return true;
}