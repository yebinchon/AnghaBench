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
struct netlink_ext_ack {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int MLX5_FLOW_CONTEXT_ACTION_MOD_HDR ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int TCA_CSUM_UPDATE_FLAG_IPV4HDR ; 
 int TCA_CSUM_UPDATE_FLAG_TCP ; 
 int TCA_CSUM_UPDATE_FLAG_UDP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static bool FUNC2(struct mlx5e_priv *priv,
				   u32 action,
				   u32 update_flags,
				   struct netlink_ext_ack *extack)
{
	u32 prot_flags = TCA_CSUM_UPDATE_FLAG_IPV4HDR | TCA_CSUM_UPDATE_FLAG_TCP |
			 TCA_CSUM_UPDATE_FLAG_UDP;

	/*  The HW recalcs checksums only if re-writing headers */
	if (!(action & MLX5_FLOW_CONTEXT_ACTION_MOD_HDR)) {
		FUNC0(extack,
				   "TC csum action is only offloaded with pedit");
		FUNC1(priv->netdev,
			    "TC csum action is only offloaded with pedit\n");
		return false;
	}

	if (update_flags & ~prot_flags) {
		FUNC0(extack,
				   "can't offload TC csum action for some header/s");
		FUNC1(priv->netdev,
			    "can't offload TC csum action for some header/s - flags %#x\n",
			    update_flags);
		return false;
	}

	return true;
}