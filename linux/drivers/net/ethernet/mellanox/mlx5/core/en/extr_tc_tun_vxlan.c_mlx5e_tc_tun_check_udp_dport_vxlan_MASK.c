#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; TYPE_2__* mdev; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ports {TYPE_3__* key; } ;
struct TYPE_4__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_6__ {int /*<<< orphan*/  dst; } ;
struct TYPE_5__ {int /*<<< orphan*/  vxlan; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_PORTS ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct flow_rule* FUNC2 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_rule*,struct flow_match_ports*) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mlx5e_priv *priv,
					      struct flow_cls_offload *f)
{
	struct flow_rule *rule = FUNC2(f);
	struct netlink_ext_ack *extack = f->common.extack;
	struct flow_match_ports enc_ports;

	if (!FUNC4(rule, FLOW_DISSECTOR_KEY_ENC_PORTS))
		return -EOPNOTSUPP;

	FUNC3(rule, &enc_ports);

	/* check the UDP destination port validity */

	if (!FUNC5(priv->mdev->vxlan,
				    FUNC1(enc_ports.key->dst))) {
		FUNC0(extack,
				   "Matched UDP dst port is not registered as a VXLAN port");
		FUNC6(priv->netdev,
			    "UDP port %d is not registered as a VXLAN port\n",
			    FUNC1(enc_ports.key->dst));
		return -EOPNOTSUPP;
	}

	return 0;
}