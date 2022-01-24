#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; int /*<<< orphan*/  mdev; } ;
struct mlx5_flow_spec {int /*<<< orphan*/  match_value; int /*<<< orphan*/  match_criteria; } ;
struct flow_rule {int dummy; } ;
struct flow_match_enc_keyid {TYPE_3__* key; TYPE_2__* mask; } ;
struct TYPE_5__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_8__ {int /*<<< orphan*/  outer_vxlan_vni; } ;
struct TYPE_7__ {int /*<<< orphan*/  keyid; } ;
struct TYPE_6__ {int /*<<< orphan*/  keyid; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_KEYID ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct flow_rule* FUNC5 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC6 (struct flow_rule*,struct flow_match_enc_keyid*) ; 
 int /*<<< orphan*/  FUNC7 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 TYPE_4__ ft_field_support ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 int /*<<< orphan*/  misc_parameters ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  vxlan_vni ; 

__attribute__((used)) static int FUNC9(struct mlx5e_priv *priv,
				    struct mlx5_flow_spec *spec,
				    struct flow_cls_offload *f,
				    void *headers_c,
				    void *headers_v)
{
	struct flow_rule *rule = FUNC5(f);
	struct netlink_ext_ack *extack = f->common.extack;
	struct flow_match_enc_keyid enc_keyid;
	void *misc_c, *misc_v;

	misc_c = FUNC0(fte_match_param, spec->match_criteria, misc_parameters);
	misc_v = FUNC0(fte_match_param, spec->match_value, misc_parameters);

	if (!FUNC7(rule, FLOW_DISSECTOR_KEY_ENC_KEYID))
		return 0;

	FUNC6(rule, &enc_keyid);

	if (!enc_keyid.mask->keyid)
		return 0;

	/* match on VNI is required */

	if (!FUNC1(priv->mdev,
					ft_field_support.outer_vxlan_vni)) {
		FUNC3(extack,
				   "Matching on VXLAN VNI is not supported");
		FUNC8(priv->netdev,
			    "Matching on VXLAN VNI is not supported\n");
		return -EOPNOTSUPP;
	}

	FUNC2(fte_match_set_misc, misc_c, vxlan_vni,
		 FUNC4(enc_keyid.mask->keyid));
	FUNC2(fte_match_set_misc, misc_v, vxlan_vni,
		 FUNC4(enc_keyid.key->keyid));

	return 0;
}