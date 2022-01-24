#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_50__   TYPE_9__ ;
typedef  struct TYPE_49__   TYPE_8__ ;
typedef  struct TYPE_48__   TYPE_7__ ;
typedef  struct TYPE_47__   TYPE_6__ ;
typedef  struct TYPE_46__   TYPE_5__ ;
typedef  struct TYPE_45__   TYPE_4__ ;
typedef  struct TYPE_44__   TYPE_3__ ;
typedef  struct TYPE_43__   TYPE_2__ ;
typedef  struct TYPE_42__   TYPE_25__ ;
typedef  struct TYPE_41__   TYPE_24__ ;
typedef  struct TYPE_40__   TYPE_23__ ;
typedef  struct TYPE_39__   TYPE_22__ ;
typedef  struct TYPE_38__   TYPE_21__ ;
typedef  struct TYPE_37__   TYPE_20__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_19__ ;
typedef  struct TYPE_34__   TYPE_18__ ;
typedef  struct TYPE_33__   TYPE_17__ ;
typedef  struct TYPE_32__   TYPE_16__ ;
typedef  struct TYPE_31__   TYPE_15__ ;
typedef  struct TYPE_30__   TYPE_14__ ;
typedef  struct TYPE_29__   TYPE_13__ ;
typedef  struct TYPE_28__   TYPE_12__ ;
typedef  struct TYPE_27__   TYPE_11__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; int /*<<< orphan*/  mdev; } ;
struct mlx5_flow_spec {void* match_criteria; void* match_value; } ;
struct TYPE_43__ {struct flow_dissector* dissector; } ;
struct flow_rule {TYPE_2__ match; } ;
struct flow_match_vlan {struct flow_dissector_key_vlan* key; struct flow_dissector_key_vlan* mask; } ;
struct flow_match_tcp {TYPE_22__* mask; TYPE_21__* key; } ;
struct flow_match_ports {TYPE_20__* mask; TYPE_19__* key; } ;
struct flow_match_ipv6_addrs {TYPE_16__* mask; TYPE_15__* key; } ;
struct flow_match_ipv4_addrs {TYPE_12__* mask; TYPE_11__* key; } ;
struct flow_match_ip {TYPE_18__* mask; TYPE_17__* key; } ;
struct flow_match_eth_addrs {TYPE_4__* mask; TYPE_3__* key; } ;
struct flow_match_control {TYPE_6__* key; TYPE_5__* mask; } ;
struct flow_match_basic {TYPE_8__* mask; TYPE_7__* key; } ;
struct flow_dissector_key_vlan {int vlan_id; scalar_t__ vlan_tpid; int vlan_priority; } ;
struct flow_dissector {int used_keys; } ;
struct TYPE_36__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_50__ {int /*<<< orphan*/  ipv4; } ;
struct TYPE_49__ {int ip_proto; scalar_t__ n_proto; } ;
struct TYPE_48__ {scalar_t__ ip_proto; scalar_t__ n_proto; } ;
struct TYPE_47__ {scalar_t__ addr_type; int flags; } ;
struct TYPE_46__ {int flags; } ;
struct TYPE_45__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_44__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_30__ {int /*<<< orphan*/  ipv6; } ;
struct TYPE_26__ {int /*<<< orphan*/  ipv4; } ;
struct TYPE_42__ {TYPE_14__ ipv6_layout; TYPE_10__ ipv4_layout; } ;
struct TYPE_41__ {int /*<<< orphan*/  outer_ipv4_ttl; } ;
struct TYPE_29__ {int /*<<< orphan*/  ipv6; } ;
struct TYPE_40__ {TYPE_13__ ipv6_layout; TYPE_9__ ipv4_layout; } ;
struct TYPE_39__ {scalar_t__ flags; } ;
struct TYPE_38__ {scalar_t__ flags; } ;
struct TYPE_37__ {scalar_t__ dst; scalar_t__ src; } ;
struct TYPE_35__ {scalar_t__ dst; scalar_t__ src; } ;
struct TYPE_34__ {int tos; int ttl; } ;
struct TYPE_33__ {int tos; int ttl; } ;
struct TYPE_32__ {scalar_t__ dst; scalar_t__ src; } ;
struct TYPE_31__ {scalar_t__ dst; scalar_t__ src; } ;
struct TYPE_28__ {scalar_t__ dst; scalar_t__ src; } ;
struct TYPE_27__ {scalar_t__ dst; scalar_t__ src; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 scalar_t__ FLOW_DISSECTOR_KEY_BASIC ; 
 scalar_t__ FLOW_DISSECTOR_KEY_CONTROL ; 
 scalar_t__ FLOW_DISSECTOR_KEY_CVLAN ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ENC_CONTROL ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ENC_IP ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ENC_KEYID ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ENC_OPTS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ENC_PORTS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ETH_ADDRS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_IP ; 
 scalar_t__ FLOW_DISSECTOR_KEY_IPV4_ADDRS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_IPV6_ADDRS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_META ; 
 scalar_t__ FLOW_DISSECTOR_KEY_PORTS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_TCP ; 
 scalar_t__ FLOW_DISSECTOR_KEY_VLAN ; 
 int FLOW_DIS_FIRST_FRAG ; 
 int FLOW_DIS_IS_FRAGMENT ; 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 scalar_t__ IPV6_ADDR_ANY ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FLOW_CONTEXT_ACTION_DECAP ; 
 scalar_t__ MLX5_MATCH_L2 ; 
 scalar_t__ MLX5_MATCH_L3 ; 
 scalar_t__ MLX5_MATCH_L4 ; 
 scalar_t__ MLX5_MATCH_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  cvlan_tag ; 
 int /*<<< orphan*/  dmac_47_16 ; 
 TYPE_25__ dst_ipv4_dst_ipv6 ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ethertype ; 
 int /*<<< orphan*/  first_prio ; 
 int /*<<< orphan*/  first_vid ; 
 struct flow_rule* FUNC6 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC7 (struct flow_rule*,struct flow_match_basic*) ; 
 int /*<<< orphan*/  FUNC8 (struct flow_rule*,struct flow_match_control*) ; 
 int /*<<< orphan*/  FUNC9 (struct flow_rule*,struct flow_match_vlan*) ; 
 int /*<<< orphan*/  FUNC10 (struct flow_rule*,struct flow_match_eth_addrs*) ; 
 int /*<<< orphan*/  FUNC11 (struct flow_rule*,struct flow_match_ip*) ; 
 int /*<<< orphan*/  FUNC12 (struct flow_rule*,struct flow_match_ipv4_addrs*) ; 
 int /*<<< orphan*/  FUNC13 (struct flow_rule*,struct flow_match_ipv6_addrs*) ; 
 scalar_t__ FUNC14 (struct flow_rule*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct flow_rule*,struct flow_match_ports*) ; 
 int /*<<< orphan*/  FUNC16 (struct flow_rule*,struct flow_match_tcp*) ; 
 int /*<<< orphan*/  FUNC17 (struct flow_rule*,struct flow_match_vlan*) ; 
 int /*<<< orphan*/  frag ; 
 TYPE_24__ ft_field_support ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_lyr_2_4 ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 void* FUNC18 (int /*<<< orphan*/ ,struct mlx5_flow_spec*) ; 
 void* FUNC19 (int /*<<< orphan*/ ,struct mlx5_flow_spec*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_dscp ; 
 int /*<<< orphan*/  ip_ecn ; 
 int /*<<< orphan*/  ip_protocol ; 
 scalar_t__ FUNC21 (scalar_t__*) ; 
 scalar_t__ FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (void*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct flow_dissector_key_vlan*,int,int) ; 
 int /*<<< orphan*/  misc_parameters ; 
 scalar_t__ FUNC26 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  outer_headers ; 
 int /*<<< orphan*/  outer_second_cvlan_tag ; 
 int /*<<< orphan*/  outer_second_prio ; 
 int /*<<< orphan*/  outer_second_svlan_tag ; 
 int /*<<< orphan*/  outer_second_vid ; 
 scalar_t__ FUNC30 (struct mlx5e_priv*,struct mlx5_flow_spec*,struct flow_cls_offload*,struct net_device*,scalar_t__*) ; 
 int /*<<< orphan*/  smac_47_16 ; 
 TYPE_23__ src_ipv4_src_ipv6 ; 
 int /*<<< orphan*/  svlan_tag ; 
 int /*<<< orphan*/  tcp_dport ; 
 int /*<<< orphan*/  tcp_flags ; 
 int /*<<< orphan*/  tcp_sport ; 
 int /*<<< orphan*/  ttl_hoplimit ; 
 int /*<<< orphan*/  udp_dport ; 
 int /*<<< orphan*/  udp_sport ; 
 int FUNC31 (struct net_device*) ; 
 scalar_t__ FUNC32 (struct net_device*) ; 

__attribute__((used)) static int FUNC33(struct mlx5e_priv *priv,
			      struct mlx5_flow_spec *spec,
			      struct flow_cls_offload *f,
			      struct net_device *filter_dev,
			      u8 *inner_match_level, u8 *outer_match_level)
{
	struct netlink_ext_ack *extack = f->common.extack;
	void *headers_c = FUNC1(fte_match_param, spec->match_criteria,
				       outer_headers);
	void *headers_v = FUNC1(fte_match_param, spec->match_value,
				       outer_headers);
	void *misc_c = FUNC1(fte_match_param, spec->match_criteria,
				    misc_parameters);
	void *misc_v = FUNC1(fte_match_param, spec->match_value,
				    misc_parameters);
	struct flow_rule *rule = FUNC6(f);
	struct flow_dissector *dissector = rule->match.dissector;
	u16 addr_type = 0;
	u8 ip_proto = 0;
	u8 *match_level;

	match_level = outer_match_level;

	if (dissector->used_keys &
	    ~(FUNC0(FLOW_DISSECTOR_KEY_META) |
	      FUNC0(FLOW_DISSECTOR_KEY_CONTROL) |
	      FUNC0(FLOW_DISSECTOR_KEY_BASIC) |
	      FUNC0(FLOW_DISSECTOR_KEY_ETH_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_VLAN) |
	      FUNC0(FLOW_DISSECTOR_KEY_CVLAN) |
	      FUNC0(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_PORTS) |
	      FUNC0(FLOW_DISSECTOR_KEY_ENC_KEYID) |
	      FUNC0(FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_ENC_PORTS)	|
	      FUNC0(FLOW_DISSECTOR_KEY_ENC_CONTROL) |
	      FUNC0(FLOW_DISSECTOR_KEY_TCP) |
	      FUNC0(FLOW_DISSECTOR_KEY_IP)  |
	      FUNC0(FLOW_DISSECTOR_KEY_ENC_IP) |
	      FUNC0(FLOW_DISSECTOR_KEY_ENC_OPTS))) {
		FUNC4(extack, "Unsupported key");
		FUNC28(priv->netdev, "Unsupported key used: 0x%x\n",
			    dissector->used_keys);
		return -EOPNOTSUPP;
	}

	if (FUNC26(filter_dev)) {
		if (FUNC30(priv, spec, f, filter_dev,
				      outer_match_level))
			return -EOPNOTSUPP;

		/* At this point, header pointers should point to the inner
		 * headers, outer header were already set by parse_tunnel_attr
		 */
		match_level = inner_match_level;
		headers_c = FUNC18(MLX5_FLOW_CONTEXT_ACTION_DECAP,
						       spec);
		headers_v = FUNC19(MLX5_FLOW_CONTEXT_ACTION_DECAP,
						    spec);
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_BASIC)) {
		struct flow_match_basic match;

		FUNC7(rule, &match);
		FUNC3(fte_match_set_lyr_2_4, headers_c, ethertype,
			 FUNC29(match.mask->n_proto));
		FUNC3(fte_match_set_lyr_2_4, headers_v, ethertype,
			 FUNC29(match.key->n_proto));

		if (match.mask->n_proto)
			*match_level = MLX5_MATCH_L2;
	}
	if (FUNC14(rule, FLOW_DISSECTOR_KEY_VLAN) ||
	    FUNC22(filter_dev)) {
		struct flow_dissector_key_vlan filter_dev_mask;
		struct flow_dissector_key_vlan filter_dev_key;
		struct flow_match_vlan match;

		if (FUNC22(filter_dev)) {
			match.key = &filter_dev_key;
			match.key->vlan_id = FUNC31(filter_dev);
			match.key->vlan_tpid = FUNC32(filter_dev);
			match.key->vlan_priority = 0;
			match.mask = &filter_dev_mask;
			FUNC25(match.mask, 0xff, sizeof(*match.mask));
			match.mask->vlan_priority = 0;
		} else {
			FUNC17(rule, &match);
		}
		if (match.mask->vlan_id ||
		    match.mask->vlan_priority ||
		    match.mask->vlan_tpid) {
			if (match.key->vlan_tpid == FUNC20(ETH_P_8021AD)) {
				FUNC3(fte_match_set_lyr_2_4, headers_c,
					 svlan_tag, 1);
				FUNC3(fte_match_set_lyr_2_4, headers_v,
					 svlan_tag, 1);
			} else {
				FUNC3(fte_match_set_lyr_2_4, headers_c,
					 cvlan_tag, 1);
				FUNC3(fte_match_set_lyr_2_4, headers_v,
					 cvlan_tag, 1);
			}

			FUNC3(fte_match_set_lyr_2_4, headers_c, first_vid,
				 match.mask->vlan_id);
			FUNC3(fte_match_set_lyr_2_4, headers_v, first_vid,
				 match.key->vlan_id);

			FUNC3(fte_match_set_lyr_2_4, headers_c, first_prio,
				 match.mask->vlan_priority);
			FUNC3(fte_match_set_lyr_2_4, headers_v, first_prio,
				 match.key->vlan_priority);

			*match_level = MLX5_MATCH_L2;
		}
	} else if (*match_level != MLX5_MATCH_NONE) {
		/* cvlan_tag enabled in match criteria and
		 * disabled in match value means both S & C tags
		 * don't exist (untagged of both)
		 */
		FUNC3(fte_match_set_lyr_2_4, headers_c, cvlan_tag, 1);
		*match_level = MLX5_MATCH_L2;
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_CVLAN)) {
		struct flow_match_vlan match;

		FUNC9(rule, &match);
		if (match.mask->vlan_id ||
		    match.mask->vlan_priority ||
		    match.mask->vlan_tpid) {
			if (match.key->vlan_tpid == FUNC20(ETH_P_8021AD)) {
				FUNC3(fte_match_set_misc, misc_c,
					 outer_second_svlan_tag, 1);
				FUNC3(fte_match_set_misc, misc_v,
					 outer_second_svlan_tag, 1);
			} else {
				FUNC3(fte_match_set_misc, misc_c,
					 outer_second_cvlan_tag, 1);
				FUNC3(fte_match_set_misc, misc_v,
					 outer_second_cvlan_tag, 1);
			}

			FUNC3(fte_match_set_misc, misc_c, outer_second_vid,
				 match.mask->vlan_id);
			FUNC3(fte_match_set_misc, misc_v, outer_second_vid,
				 match.key->vlan_id);
			FUNC3(fte_match_set_misc, misc_c, outer_second_prio,
				 match.mask->vlan_priority);
			FUNC3(fte_match_set_misc, misc_v, outer_second_prio,
				 match.key->vlan_priority);

			*match_level = MLX5_MATCH_L2;
		}
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
		struct flow_match_eth_addrs match;

		FUNC10(rule, &match);
		FUNC5(FUNC1(fte_match_set_lyr_2_4, headers_c,
					     dmac_47_16),
				match.mask->dst);
		FUNC5(FUNC1(fte_match_set_lyr_2_4, headers_v,
					     dmac_47_16),
				match.key->dst);

		FUNC5(FUNC1(fte_match_set_lyr_2_4, headers_c,
					     smac_47_16),
				match.mask->src);
		FUNC5(FUNC1(fte_match_set_lyr_2_4, headers_v,
					     smac_47_16),
				match.key->src);

		if (!FUNC23(match.mask->src) ||
		    !FUNC23(match.mask->dst))
			*match_level = MLX5_MATCH_L2;
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_CONTROL)) {
		struct flow_match_control match;

		FUNC8(rule, &match);
		addr_type = match.key->addr_type;

		/* the HW doesn't support frag first/later */
		if (match.mask->flags & FLOW_DIS_FIRST_FRAG)
			return -EOPNOTSUPP;

		if (match.mask->flags & FLOW_DIS_IS_FRAGMENT) {
			FUNC3(fte_match_set_lyr_2_4, headers_c, frag, 1);
			FUNC3(fte_match_set_lyr_2_4, headers_v, frag,
				 match.key->flags & FLOW_DIS_IS_FRAGMENT);

			/* the HW doesn't need L3 inline to match on frag=no */
			if (!(match.key->flags & FLOW_DIS_IS_FRAGMENT))
				*match_level = MLX5_MATCH_L2;
	/* ***  L2 attributes parsing up to here *** */
			else
				*match_level = MLX5_MATCH_L3;
		}
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_BASIC)) {
		struct flow_match_basic match;

		FUNC7(rule, &match);
		ip_proto = match.key->ip_proto;

		FUNC3(fte_match_set_lyr_2_4, headers_c, ip_protocol,
			 match.mask->ip_proto);
		FUNC3(fte_match_set_lyr_2_4, headers_v, ip_protocol,
			 match.key->ip_proto);

		if (match.mask->ip_proto)
			*match_level = MLX5_MATCH_L3;
	}

	if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
		struct flow_match_ipv4_addrs match;

		FUNC12(rule, &match);
		FUNC24(FUNC1(fte_match_set_lyr_2_4, headers_c,
				    src_ipv4_src_ipv6.ipv4_layout.ipv4),
		       &match.mask->src, sizeof(match.mask->src));
		FUNC24(FUNC1(fte_match_set_lyr_2_4, headers_v,
				    src_ipv4_src_ipv6.ipv4_layout.ipv4),
		       &match.key->src, sizeof(match.key->src));
		FUNC24(FUNC1(fte_match_set_lyr_2_4, headers_c,
				    dst_ipv4_dst_ipv6.ipv4_layout.ipv4),
		       &match.mask->dst, sizeof(match.mask->dst));
		FUNC24(FUNC1(fte_match_set_lyr_2_4, headers_v,
				    dst_ipv4_dst_ipv6.ipv4_layout.ipv4),
		       &match.key->dst, sizeof(match.key->dst));

		if (match.mask->src || match.mask->dst)
			*match_level = MLX5_MATCH_L3;
	}

	if (addr_type == FLOW_DISSECTOR_KEY_IPV6_ADDRS) {
		struct flow_match_ipv6_addrs match;

		FUNC13(rule, &match);
		FUNC24(FUNC1(fte_match_set_lyr_2_4, headers_c,
				    src_ipv4_src_ipv6.ipv6_layout.ipv6),
		       &match.mask->src, sizeof(match.mask->src));
		FUNC24(FUNC1(fte_match_set_lyr_2_4, headers_v,
				    src_ipv4_src_ipv6.ipv6_layout.ipv6),
		       &match.key->src, sizeof(match.key->src));

		FUNC24(FUNC1(fte_match_set_lyr_2_4, headers_c,
				    dst_ipv4_dst_ipv6.ipv6_layout.ipv6),
		       &match.mask->dst, sizeof(match.mask->dst));
		FUNC24(FUNC1(fte_match_set_lyr_2_4, headers_v,
				    dst_ipv4_dst_ipv6.ipv6_layout.ipv6),
		       &match.key->dst, sizeof(match.key->dst));

		if (FUNC21(&match.mask->src) != IPV6_ADDR_ANY ||
		    FUNC21(&match.mask->dst) != IPV6_ADDR_ANY)
			*match_level = MLX5_MATCH_L3;
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_IP)) {
		struct flow_match_ip match;

		FUNC11(rule, &match);
		FUNC3(fte_match_set_lyr_2_4, headers_c, ip_ecn,
			 match.mask->tos & 0x3);
		FUNC3(fte_match_set_lyr_2_4, headers_v, ip_ecn,
			 match.key->tos & 0x3);

		FUNC3(fte_match_set_lyr_2_4, headers_c, ip_dscp,
			 match.mask->tos >> 2);
		FUNC3(fte_match_set_lyr_2_4, headers_v, ip_dscp,
			 match.key->tos  >> 2);

		FUNC3(fte_match_set_lyr_2_4, headers_c, ttl_hoplimit,
			 match.mask->ttl);
		FUNC3(fte_match_set_lyr_2_4, headers_v, ttl_hoplimit,
			 match.key->ttl);

		if (match.mask->ttl &&
		    !FUNC2(priv->mdev,
						ft_field_support.outer_ipv4_ttl)) {
			FUNC4(extack,
					   "Matching on TTL is not supported");
			return -EOPNOTSUPP;
		}

		if (match.mask->tos || match.mask->ttl)
			*match_level = MLX5_MATCH_L3;
	}

	/* ***  L3 attributes parsing up to here *** */

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_PORTS)) {
		struct flow_match_ports match;

		FUNC15(rule, &match);
		switch (ip_proto) {
		case IPPROTO_TCP:
			FUNC3(fte_match_set_lyr_2_4, headers_c,
				 tcp_sport, FUNC29(match.mask->src));
			FUNC3(fte_match_set_lyr_2_4, headers_v,
				 tcp_sport, FUNC29(match.key->src));

			FUNC3(fte_match_set_lyr_2_4, headers_c,
				 tcp_dport, FUNC29(match.mask->dst));
			FUNC3(fte_match_set_lyr_2_4, headers_v,
				 tcp_dport, FUNC29(match.key->dst));
			break;

		case IPPROTO_UDP:
			FUNC3(fte_match_set_lyr_2_4, headers_c,
				 udp_sport, FUNC29(match.mask->src));
			FUNC3(fte_match_set_lyr_2_4, headers_v,
				 udp_sport, FUNC29(match.key->src));

			FUNC3(fte_match_set_lyr_2_4, headers_c,
				 udp_dport, FUNC29(match.mask->dst));
			FUNC3(fte_match_set_lyr_2_4, headers_v,
				 udp_dport, FUNC29(match.key->dst));
			break;
		default:
			FUNC4(extack,
					   "Only UDP and TCP transports are supported for L4 matching");
			FUNC27(priv->netdev,
				   "Only UDP and TCP transport are supported\n");
			return -EINVAL;
		}

		if (match.mask->src || match.mask->dst)
			*match_level = MLX5_MATCH_L4;
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_TCP)) {
		struct flow_match_tcp match;

		FUNC16(rule, &match);
		FUNC3(fte_match_set_lyr_2_4, headers_c, tcp_flags,
			 FUNC29(match.mask->flags));
		FUNC3(fte_match_set_lyr_2_4, headers_v, tcp_flags,
			 FUNC29(match.key->flags));

		if (match.mask->flags)
			*match_level = MLX5_MATCH_L4;
	}

	return 0;
}