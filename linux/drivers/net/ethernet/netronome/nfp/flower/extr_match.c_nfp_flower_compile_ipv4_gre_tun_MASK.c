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
struct nfp_flower_ipv4_gre_tun {int /*<<< orphan*/  ip_ext; int /*<<< orphan*/  ipv4; void* tun_flags; int /*<<< orphan*/  tun_key; void* ethertype; } ;
struct flow_rule {int dummy; } ;
struct flow_match_enc_keyid {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  keyid; } ;
struct TYPE_3__ {int /*<<< orphan*/  keyid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TEB ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_KEYID ; 
 int /*<<< orphan*/  NFP_FL_GRE_FLAG_KEY ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct flow_rule* FUNC1 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_rule*,struct flow_match_enc_keyid*) ; 
 scalar_t__ FUNC3 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_flower_ipv4_gre_tun*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct flow_cls_offload*) ; 

__attribute__((used)) static void
FUNC7(struct nfp_flower_ipv4_gre_tun *ext,
				struct nfp_flower_ipv4_gre_tun *msk,
				struct flow_cls_offload *flow)
{
	struct flow_rule *rule = FUNC1(flow);

	FUNC4(ext, 0, sizeof(struct nfp_flower_ipv4_gre_tun));
	FUNC4(msk, 0, sizeof(struct nfp_flower_ipv4_gre_tun));

	/* NVGRE is the only supported GRE tunnel type */
	ext->ethertype = FUNC0(ETH_P_TEB);
	msk->ethertype = FUNC0(~0);

	if (FUNC3(rule, FLOW_DISSECTOR_KEY_ENC_KEYID)) {
		struct flow_match_enc_keyid match;

		FUNC2(rule, &match);
		ext->tun_key = match.key->keyid;
		msk->tun_key = match.mask->keyid;

		ext->tun_flags = FUNC0(NFP_FL_GRE_FLAG_KEY);
		msk->tun_flags = FUNC0(NFP_FL_GRE_FLAG_KEY);
	}

	FUNC6(&ext->ipv4, &msk->ipv4, flow);
	FUNC5(&ext->ip_ext, &msk->ip_ext, flow);
}