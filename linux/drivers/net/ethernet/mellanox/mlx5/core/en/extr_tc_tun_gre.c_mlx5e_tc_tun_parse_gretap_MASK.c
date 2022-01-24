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
struct mlx5e_priv {int dummy; } ;
struct mlx5_flow_spec {int /*<<< orphan*/  match_value; int /*<<< orphan*/  match_criteria; } ;
struct flow_rule {int dummy; } ;
struct flow_match_enc_keyid {TYPE_2__* key; TYPE_1__* mask; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
struct TYPE_5__ {int /*<<< orphan*/  keyid; } ;
struct TYPE_4__ {int /*<<< orphan*/  keyid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TEB ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_KEYID ; 
 int /*<<< orphan*/  IPPROTO_GRE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct flow_rule* FUNC4 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC5 (struct flow_rule*,struct flow_match_enc_keyid*) ; 
 scalar_t__ FUNC6 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_lyr_2_4 ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 TYPE_3__ gre_key ; 
 int /*<<< orphan*/  gre_protocol ; 
 int /*<<< orphan*/  ip_protocol ; 
 int /*<<< orphan*/  misc_parameters ; 

__attribute__((used)) static int FUNC7(struct mlx5e_priv *priv,
				     struct mlx5_flow_spec *spec,
				     struct flow_cls_offload *f,
				     void *headers_c,
				     void *headers_v)
{
	void *misc_c = FUNC0(fte_match_param, spec->match_criteria, misc_parameters);
	void *misc_v = FUNC0(fte_match_param, spec->match_value, misc_parameters);
	struct flow_rule *rule = FUNC4(f);

	FUNC2(fte_match_set_lyr_2_4, headers_c, ip_protocol);
	FUNC1(fte_match_set_lyr_2_4, headers_v, ip_protocol, IPPROTO_GRE);

	/* gre protocol */
	FUNC2(fte_match_set_misc, misc_c, gre_protocol);
	FUNC1(fte_match_set_misc, misc_v, gre_protocol, ETH_P_TEB);

	/* gre key */
	if (FUNC6(rule, FLOW_DISSECTOR_KEY_ENC_KEYID)) {
		struct flow_match_enc_keyid enc_keyid;

		FUNC5(rule, &enc_keyid);
		FUNC1(fte_match_set_misc, misc_c,
			 gre_key.key, FUNC3(enc_keyid.mask->keyid));
		FUNC1(fte_match_set_misc, misc_v,
			 gre_key.key, FUNC3(enc_keyid.key->keyid));
	}

	return 0;
}