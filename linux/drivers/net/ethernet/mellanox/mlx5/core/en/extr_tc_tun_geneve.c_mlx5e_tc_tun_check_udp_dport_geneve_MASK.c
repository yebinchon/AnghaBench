#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ports {TYPE_2__* key; } ;
struct TYPE_3__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_PORTS ; 
 scalar_t__ GENEVE_UDP_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct flow_rule* FUNC2 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_rule*,struct flow_match_ports*) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mlx5e_priv *priv,
					       struct flow_cls_offload *f)
{
	struct flow_rule *rule = FUNC2(f);
	struct netlink_ext_ack *extack = f->common.extack;
	struct flow_match_ports enc_ports;

	if (!FUNC4(rule, FLOW_DISSECTOR_KEY_ENC_PORTS))
		return -EOPNOTSUPP;

	FUNC3(rule, &enc_ports);

	/* Currently we support only default GENEVE
	 * port, so udp dst port must match.
	 */
	if (FUNC1(enc_ports.key->dst) != GENEVE_UDP_PORT) {
		FUNC0(extack,
				   "Matched UDP dst port is not registered as a GENEVE port");
		FUNC5(priv->netdev,
			    "UDP port %d is not registered as a GENEVE port\n",
			    FUNC1(enc_ports.key->dst));
		return -EOPNOTSUPP;
	}

	return 0;
}