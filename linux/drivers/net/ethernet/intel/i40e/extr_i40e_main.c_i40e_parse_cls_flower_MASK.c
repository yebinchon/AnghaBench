#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_18__ ;
typedef  struct TYPE_26__   TYPE_17__ ;
typedef  struct TYPE_25__   TYPE_16__ ;
typedef  struct TYPE_24__   TYPE_15__ ;
typedef  struct TYPE_23__   TYPE_14__ ;
typedef  struct TYPE_22__   TYPE_13__ ;
typedef  struct TYPE_21__   TYPE_12__ ;
typedef  struct TYPE_20__   TYPE_11__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {TYPE_15__* pdev; } ;
struct i40e_cloud_filter {int ip_proto; int flags; int /*<<< orphan*/  src_port; int /*<<< orphan*/  dst_port; int /*<<< orphan*/  dst_ipv6; int /*<<< orphan*/  src_ipv6; int /*<<< orphan*/  src_ipv4; int /*<<< orphan*/  dst_ipv4; scalar_t__ vlan_id; int /*<<< orphan*/  src_mac; int /*<<< orphan*/  dst_mac; scalar_t__ n_proto; int /*<<< orphan*/  tenant_id; } ;
struct TYPE_35__ {struct flow_dissector* dissector; } ;
struct flow_rule {TYPE_8__ match; } ;
struct flow_match_vlan {TYPE_17__* key; TYPE_16__* mask; } ;
struct flow_match_ports {TYPE_7__* key; TYPE_6__* mask; } ;
struct flow_match_ipv6_addrs {TYPE_5__* key; TYPE_4__* mask; } ;
struct flow_match_ipv4_addrs {TYPE_3__* key; TYPE_2__* mask; } ;
struct flow_match_eth_addrs {TYPE_14__* key; TYPE_13__* mask; } ;
struct flow_match_enc_keyid {TYPE_10__* key; TYPE_9__* mask; } ;
struct flow_match_control {TYPE_1__* key; } ;
struct flow_match_basic {TYPE_12__* key; TYPE_11__* mask; } ;
struct flow_dissector {int used_keys; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_36__ {scalar_t__ keyid; } ;
struct TYPE_34__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_33__ {scalar_t__ src; scalar_t__ dst; } ;
struct TYPE_27__ {int /*<<< orphan*/  s6_addr32; } ;
struct TYPE_32__ {TYPE_18__ dst; TYPE_18__ src; } ;
struct TYPE_31__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_30__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_29__ {scalar_t__ dst; scalar_t__ src; } ;
struct TYPE_28__ {scalar_t__ addr_type; } ;
struct TYPE_26__ {int vlan_id; } ;
struct TYPE_25__ {int vlan_id; } ;
struct TYPE_24__ {int /*<<< orphan*/  dev; } ;
struct TYPE_23__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_22__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_21__ {int ip_proto; int /*<<< orphan*/  n_proto; } ;
struct TYPE_20__ {int /*<<< orphan*/  n_proto; } ;
struct TYPE_19__ {int /*<<< orphan*/  keyid; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ ETH_P_ALL ; 
 scalar_t__ FLOW_DISSECTOR_KEY_BASIC ; 
 scalar_t__ FLOW_DISSECTOR_KEY_CONTROL ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ENC_KEYID ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ETH_ADDRS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_IPV4_ADDRS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_IPV6_ADDRS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_PORTS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_VLAN ; 
 int I40E_CLOUD_FIELD_IIP ; 
 int I40E_CLOUD_FIELD_IMAC ; 
 int I40E_CLOUD_FIELD_IVLAN ; 
 int I40E_CLOUD_FIELD_OMAC ; 
 int I40E_CLOUD_FIELD_TEN_ID ; 
 int I40E_ERR_CONFIG ; 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct flow_rule* FUNC7 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC8 (struct flow_rule*,struct flow_match_basic*) ; 
 int /*<<< orphan*/  FUNC9 (struct flow_rule*,struct flow_match_control*) ; 
 int /*<<< orphan*/  FUNC10 (struct flow_rule*,struct flow_match_enc_keyid*) ; 
 int /*<<< orphan*/  FUNC11 (struct flow_rule*,struct flow_match_eth_addrs*) ; 
 int /*<<< orphan*/  FUNC12 (struct flow_rule*,struct flow_match_ipv4_addrs*) ; 
 int /*<<< orphan*/  FUNC13 (struct flow_rule*,struct flow_match_ipv6_addrs*) ; 
 scalar_t__ FUNC14 (struct flow_rule*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct flow_rule*,struct flow_match_ports*) ; 
 int /*<<< orphan*/  FUNC16 (struct flow_rule*,struct flow_match_vlan*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_18__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct i40e_vsi *vsi,
				 struct flow_cls_offload *f,
				 struct i40e_cloud_filter *filter)
{
	struct flow_rule *rule = FUNC7(f);
	struct flow_dissector *dissector = rule->match.dissector;
	u16 n_proto_mask = 0, n_proto_key = 0, addr_type = 0;
	struct i40e_pf *pf = vsi->back;
	u8 field_flags = 0;

	if (dissector->used_keys &
	    ~(FUNC0(FLOW_DISSECTOR_KEY_CONTROL) |
	      FUNC0(FLOW_DISSECTOR_KEY_BASIC) |
	      FUNC0(FLOW_DISSECTOR_KEY_ETH_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_VLAN) |
	      FUNC0(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_PORTS) |
	      FUNC0(FLOW_DISSECTOR_KEY_ENC_KEYID))) {
		FUNC5(&pf->pdev->dev, "Unsupported key used: 0x%x\n",
			dissector->used_keys);
		return -EOPNOTSUPP;
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_ENC_KEYID)) {
		struct flow_match_enc_keyid match;

		FUNC10(rule, &match);
		if (match.mask->keyid != 0)
			field_flags |= I40E_CLOUD_FIELD_TEN_ID;

		filter->tenant_id = FUNC2(match.key->keyid);
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_BASIC)) {
		struct flow_match_basic match;

		FUNC8(rule, &match);
		n_proto_key = FUNC22(match.key->n_proto);
		n_proto_mask = FUNC22(match.mask->n_proto);

		if (n_proto_key == ETH_P_ALL) {
			n_proto_key = 0;
			n_proto_mask = 0;
		}
		filter->n_proto = n_proto_key & n_proto_mask;
		filter->ip_proto = match.key->ip_proto;
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
		struct flow_match_eth_addrs match;

		FUNC11(rule, &match);

		/* use is_broadcast and is_zero to check for all 0xf or 0 */
		if (!FUNC20(match.mask->dst)) {
			if (FUNC19(match.mask->dst)) {
				field_flags |= I40E_CLOUD_FIELD_OMAC;
			} else {
				FUNC5(&pf->pdev->dev, "Bad ether dest mask %pM\n",
					match.mask->dst);
				return I40E_ERR_CONFIG;
			}
		}

		if (!FUNC20(match.mask->src)) {
			if (FUNC19(match.mask->src)) {
				field_flags |= I40E_CLOUD_FIELD_IMAC;
			} else {
				FUNC5(&pf->pdev->dev, "Bad ether src mask %pM\n",
					match.mask->src);
				return I40E_ERR_CONFIG;
			}
		}
		FUNC6(filter->dst_mac, match.key->dst);
		FUNC6(filter->src_mac, match.key->src);
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_VLAN)) {
		struct flow_match_vlan match;

		FUNC16(rule, &match);
		if (match.mask->vlan_id) {
			if (match.mask->vlan_id == VLAN_VID_MASK) {
				field_flags |= I40E_CLOUD_FIELD_IVLAN;

			} else {
				FUNC5(&pf->pdev->dev, "Bad vlan mask 0x%04x\n",
					match.mask->vlan_id);
				return I40E_ERR_CONFIG;
			}
		}

		filter->vlan_id = FUNC3(match.key->vlan_id);
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_CONTROL)) {
		struct flow_match_control match;

		FUNC9(rule, &match);
		addr_type = match.key->addr_type;
	}

	if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
		struct flow_match_ipv4_addrs match;

		FUNC12(rule, &match);
		if (match.mask->dst) {
			if (match.mask->dst == FUNC4(0xffffffff)) {
				field_flags |= I40E_CLOUD_FIELD_IIP;
			} else {
				FUNC5(&pf->pdev->dev, "Bad ip dst mask %pI4b\n",
					&match.mask->dst);
				return I40E_ERR_CONFIG;
			}
		}

		if (match.mask->src) {
			if (match.mask->src == FUNC4(0xffffffff)) {
				field_flags |= I40E_CLOUD_FIELD_IIP;
			} else {
				FUNC5(&pf->pdev->dev, "Bad ip src mask %pI4b\n",
					&match.mask->src);
				return I40E_ERR_CONFIG;
			}
		}

		if (field_flags & I40E_CLOUD_FIELD_TEN_ID) {
			FUNC5(&pf->pdev->dev, "Tenant id not allowed for ip filter\n");
			return I40E_ERR_CONFIG;
		}
		filter->dst_ipv4 = match.key->dst;
		filter->src_ipv4 = match.key->src;
	}

	if (addr_type == FLOW_DISSECTOR_KEY_IPV6_ADDRS) {
		struct flow_match_ipv6_addrs match;

		FUNC13(rule, &match);

		/* src and dest IPV6 address should not be LOOPBACK
		 * (0:0:0:0:0:0:0:1), which can be represented as ::1
		 */
		if (FUNC18(&match.key->dst) ||
		    FUNC18(&match.key->src)) {
			FUNC5(&pf->pdev->dev,
				"Bad ipv6, addr is LOOPBACK\n");
			return I40E_ERR_CONFIG;
		}
		if (!FUNC17(&match.mask->dst) ||
		    !FUNC17(&match.mask->src))
			field_flags |= I40E_CLOUD_FIELD_IIP;

		FUNC21(&filter->src_ipv6, &match.key->src.s6_addr32,
		       sizeof(filter->src_ipv6));
		FUNC21(&filter->dst_ipv6, &match.key->dst.s6_addr32,
		       sizeof(filter->dst_ipv6));
	}

	if (FUNC14(rule, FLOW_DISSECTOR_KEY_PORTS)) {
		struct flow_match_ports match;

		FUNC15(rule, &match);
		if (match.mask->src) {
			if (match.mask->src == FUNC3(0xffff)) {
				field_flags |= I40E_CLOUD_FIELD_IIP;
			} else {
				FUNC5(&pf->pdev->dev, "Bad src port mask 0x%04x\n",
					FUNC1(match.mask->src));
				return I40E_ERR_CONFIG;
			}
		}

		if (match.mask->dst) {
			if (match.mask->dst == FUNC3(0xffff)) {
				field_flags |= I40E_CLOUD_FIELD_IIP;
			} else {
				FUNC5(&pf->pdev->dev, "Bad dst port mask 0x%04x\n",
					FUNC1(match.mask->dst));
				return I40E_ERR_CONFIG;
			}
		}

		filter->dst_port = match.key->dst;
		filter->src_port = match.key->src;

		switch (filter->ip_proto) {
		case IPPROTO_TCP:
		case IPPROTO_UDP:
			break;
		default:
			FUNC5(&pf->pdev->dev,
				"Only UDP and TCP transport are supported\n");
			return -EINVAL;
		}
	}
	filter->flags = field_flags;
	return 0;
}