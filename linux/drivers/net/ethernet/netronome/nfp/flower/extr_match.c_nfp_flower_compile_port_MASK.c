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
typedef  int u32 ;
struct nfp_flower_in_port {void* in_port; } ;
struct netlink_ext_ack {int dummy; } ;
typedef  enum nfp_flower_tun_type { ____Placeholder_nfp_flower_tun_type } nfp_flower_tun_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int NFP_FL_PORT_TYPE_TUN ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(struct nfp_flower_in_port *frame, u32 cmsg_port,
			bool mask_version, enum nfp_flower_tun_type tun_type,
			struct netlink_ext_ack *extack)
{
	if (mask_version) {
		frame->in_port = FUNC1(~0);
		return 0;
	}

	if (tun_type) {
		frame->in_port = FUNC1(NFP_FL_PORT_TYPE_TUN | tun_type);
	} else {
		if (!cmsg_port) {
			FUNC0(extack, "unsupported offload: invalid ingress interface for match offload");
			return -EOPNOTSUPP;
		}
		frame->in_port = FUNC1(cmsg_port);
	}

	return 0;
}