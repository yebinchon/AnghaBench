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
typedef  int u32 ;
struct nfp_flower_ipv4_udp_tun {int /*<<< orphan*/  ip_ext; int /*<<< orphan*/  ipv4; void* tun_id; } ;
struct flow_rule {int dummy; } ;
struct flow_match_enc_keyid {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  keyid; } ;
struct TYPE_3__ {int /*<<< orphan*/  keyid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_KEYID ; 
 int NFP_FL_TUN_VNI_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 struct flow_rule* FUNC2 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_rule*,struct flow_match_enc_keyid*) ; 
 scalar_t__ FUNC4 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_flower_ipv4_udp_tun*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct flow_cls_offload*) ; 

__attribute__((used)) static void
FUNC8(struct nfp_flower_ipv4_udp_tun *ext,
				struct nfp_flower_ipv4_udp_tun *msk,
				struct flow_cls_offload *flow)
{
	struct flow_rule *rule = FUNC2(flow);

	FUNC5(ext, 0, sizeof(struct nfp_flower_ipv4_udp_tun));
	FUNC5(msk, 0, sizeof(struct nfp_flower_ipv4_udp_tun));

	if (FUNC4(rule, FLOW_DISSECTOR_KEY_ENC_KEYID)) {
		struct flow_match_enc_keyid match;
		u32 temp_vni;

		FUNC3(rule, &match);
		temp_vni = FUNC0(match.key->keyid) << NFP_FL_TUN_VNI_OFFSET;
		ext->tun_id = FUNC1(temp_vni);
		temp_vni = FUNC0(match.mask->keyid) << NFP_FL_TUN_VNI_OFFSET;
		msk->tun_id = FUNC1(temp_vni);
	}

	FUNC7(&ext->ipv4, &msk->ipv4, flow);
	FUNC6(&ext->ip_ext, &msk->ip_ext, flow);
}