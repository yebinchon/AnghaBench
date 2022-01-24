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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pedit_headers_action {int /*<<< orphan*/  pedits; } ;
struct netlink_ext_ack {int dummy; } ;
struct mlx5e_tc_flow_parse_attr {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct TYPE_2__ {scalar_t__ htype; int /*<<< orphan*/  offset; int /*<<< orphan*/  val; int /*<<< orphan*/  mask; } ;
struct flow_action_entry {scalar_t__ id; TYPE_1__ mangle; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FLOW_ACTION_MANGLE ; 
 scalar_t__ FLOW_ACT_MANGLE_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pedit_headers_action*) ; 

__attribute__((used)) static int FUNC3(struct mlx5e_priv *priv,
				 const struct flow_action_entry *act, int namespace,
				 struct mlx5e_tc_flow_parse_attr *parse_attr,
				 struct pedit_headers_action *hdrs,
				 struct netlink_ext_ack *extack)
{
	u8 cmd = (act->id == FLOW_ACTION_MANGLE) ? 0 : 1;
	int err = -EOPNOTSUPP;
	u32 mask, val, offset;
	u8 htype;

	htype = act->mangle.htype;
	err = -EOPNOTSUPP; /* can't be all optimistic */

	if (htype == FLOW_ACT_MANGLE_UNSPEC) {
		FUNC0(extack, "legacy pedit isn't offloaded");
		goto out_err;
	}

	if (!FUNC1(priv->mdev, namespace)) {
		FUNC0(extack,
				   "The pedit offload action is not supported");
		goto out_err;
	}

	mask = act->mangle.mask;
	val = act->mangle.val;
	offset = act->mangle.offset;

	err = FUNC2(htype, ~mask, val, offset, &hdrs[cmd]);
	if (err)
		goto out_err;

	hdrs[cmd].pedits++;

	return 0;
out_err:
	return err;
}