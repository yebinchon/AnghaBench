#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_9__ ;
typedef  struct TYPE_41__   TYPE_8__ ;
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_6__ ;
typedef  struct TYPE_38__   TYPE_5__ ;
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_21__ ;
typedef  struct TYPE_33__   TYPE_20__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_19__ ;
typedef  struct TYPE_30__   TYPE_18__ ;
typedef  struct TYPE_29__   TYPE_17__ ;
typedef  struct TYPE_28__   TYPE_16__ ;
typedef  struct TYPE_27__   TYPE_15__ ;
typedef  struct TYPE_26__   TYPE_14__ ;
typedef  struct TYPE_25__   TYPE_13__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_29__ {int vlan_id; scalar_t__ src_port; scalar_t__ dst_port; scalar_t__* src_ip; scalar_t__* dst_ip; int /*<<< orphan*/  src_mac; int /*<<< orphan*/  dst_mac; } ;
struct TYPE_30__ {TYPE_17__ tcp_spec; } ;
struct TYPE_27__ {int* dst_mac; int* src_mac; int vlan_id; int dst_port; int src_port; scalar_t__* src_ip; scalar_t__* dst_ip; } ;
struct TYPE_28__ {TYPE_15__ tcp_spec; } ;
struct virtchnl_filter {int field_flags; TYPE_18__ data; TYPE_16__ mask; int /*<<< orphan*/  flow_type; } ;
struct iavf_cloud_filter {struct virtchnl_filter f; } ;
struct iavf_adapter {TYPE_13__* pdev; } ;
struct TYPE_33__ {struct flow_dissector* dissector; } ;
struct flow_rule {TYPE_20__ match; } ;
struct flow_match_vlan {TYPE_7__* key; TYPE_6__* mask; } ;
struct flow_match_ports {TYPE_19__* key; TYPE_14__* mask; } ;
struct flow_match_ipv6_addrs {TYPE_12__* key; TYPE_11__* mask; } ;
struct flow_match_ipv4_addrs {TYPE_10__* key; TYPE_9__* mask; } ;
struct flow_match_eth_addrs {TYPE_5__* key; TYPE_4__* mask; } ;
struct flow_match_enc_keyid {TYPE_1__* mask; } ;
struct flow_match_control {TYPE_8__* key; } ;
struct flow_match_basic {TYPE_3__* key; TYPE_2__* mask; } ;
struct flow_dissector {int used_keys; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_42__ {scalar_t__ dst; scalar_t__ src; } ;
struct TYPE_41__ {scalar_t__ addr_type; } ;
struct TYPE_40__ {int vlan_id; } ;
struct TYPE_39__ {int vlan_id; } ;
struct TYPE_38__ {int dst; int src; } ;
struct TYPE_37__ {int dst; int src; } ;
struct TYPE_36__ {scalar_t__ ip_proto; int /*<<< orphan*/  n_proto; } ;
struct TYPE_35__ {int /*<<< orphan*/  n_proto; } ;
struct TYPE_34__ {int /*<<< orphan*/  s6_addr32; } ;
struct TYPE_32__ {scalar_t__ keyid; } ;
struct TYPE_31__ {scalar_t__ src; scalar_t__ dst; } ;
struct TYPE_26__ {int src; int dst; } ;
struct TYPE_25__ {int /*<<< orphan*/  dev; } ;
struct TYPE_24__ {TYPE_21__ src; TYPE_21__ dst; } ;
struct TYPE_23__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_22__ {scalar_t__ src; scalar_t__ dst; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int ETH_ALEN ; 
 scalar_t__ ETH_P_ALL ; 
 scalar_t__ ETH_P_IP ; 
 scalar_t__ ETH_P_IPV6 ; 
 scalar_t__ FLOW_DISSECTOR_KEY_BASIC ; 
 scalar_t__ FLOW_DISSECTOR_KEY_CONTROL ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ENC_KEYID ; 
 scalar_t__ FLOW_DISSECTOR_KEY_ETH_ADDRS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_IPV4_ADDRS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_IPV6_ADDRS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_PORTS ; 
 scalar_t__ FLOW_DISSECTOR_KEY_VLAN ; 
 int IAVF_CLOUD_FIELD_IIP ; 
 int IAVF_CLOUD_FIELD_IMAC ; 
 int IAVF_CLOUD_FIELD_IVLAN ; 
 int IAVF_CLOUD_FIELD_OMAC ; 
 int IAVF_CLOUD_FIELD_TEN_ID ; 
 int IAVF_ERR_CONFIG ; 
 scalar_t__ IPPROTO_TCP ; 
 int IPV6_ADDR_ANY ; 
 int /*<<< orphan*/  VIRTCHNL_TCP_V6_FLOW ; 
 int VLAN_VID_MASK ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct flow_rule* FUNC8 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC9 (struct flow_rule*,struct flow_match_basic*) ; 
 int /*<<< orphan*/  FUNC10 (struct flow_rule*,struct flow_match_control*) ; 
 int /*<<< orphan*/  FUNC11 (struct flow_rule*,struct flow_match_enc_keyid*) ; 
 int /*<<< orphan*/  FUNC12 (struct flow_rule*,struct flow_match_eth_addrs*) ; 
 int /*<<< orphan*/  FUNC13 (struct flow_rule*,struct flow_match_ipv4_addrs*) ; 
 int /*<<< orphan*/  FUNC14 (struct flow_rule*,struct flow_match_ipv6_addrs*) ; 
 scalar_t__ FUNC15 (struct flow_rule*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct flow_rule*,struct flow_match_ports*) ; 
 int /*<<< orphan*/  FUNC17 (struct flow_rule*,struct flow_match_vlan*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (TYPE_21__*) ; 
 scalar_t__ FUNC20 (int) ; 
 scalar_t__ FUNC21 (int) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__**,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct iavf_adapter *adapter,
				 struct flow_cls_offload *f,
				 struct iavf_cloud_filter *filter)
{
	struct flow_rule *rule = FUNC8(f);
	struct flow_dissector *dissector = rule->match.dissector;
	u16 n_proto_mask = 0;
	u16 n_proto_key = 0;
	u8 field_flags = 0;
	u16 addr_type = 0;
	u16 n_proto = 0;
	int i = 0;
	struct virtchnl_filter *vf = &filter->f;

	if (dissector->used_keys &
	    ~(FUNC0(FLOW_DISSECTOR_KEY_CONTROL) |
	      FUNC0(FLOW_DISSECTOR_KEY_BASIC) |
	      FUNC0(FLOW_DISSECTOR_KEY_ETH_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_VLAN) |
	      FUNC0(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_PORTS) |
	      FUNC0(FLOW_DISSECTOR_KEY_ENC_KEYID))) {
		FUNC5(&adapter->pdev->dev, "Unsupported key used: 0x%x\n",
			dissector->used_keys);
		return -EOPNOTSUPP;
	}

	if (FUNC15(rule, FLOW_DISSECTOR_KEY_ENC_KEYID)) {
		struct flow_match_enc_keyid match;

		FUNC11(rule, &match);
		if (match.mask->keyid != 0)
			field_flags |= IAVF_CLOUD_FIELD_TEN_ID;
	}

	if (FUNC15(rule, FLOW_DISSECTOR_KEY_BASIC)) {
		struct flow_match_basic match;

		FUNC9(rule, &match);
		n_proto_key = FUNC25(match.key->n_proto);
		n_proto_mask = FUNC25(match.mask->n_proto);

		if (n_proto_key == ETH_P_ALL) {
			n_proto_key = 0;
			n_proto_mask = 0;
		}
		n_proto = n_proto_key & n_proto_mask;
		if (n_proto != ETH_P_IP && n_proto != ETH_P_IPV6)
			return -EINVAL;
		if (n_proto == ETH_P_IPV6) {
			/* specify flow type as TCP IPv6 */
			vf->flow_type = VIRTCHNL_TCP_V6_FLOW;
		}

		if (match.key->ip_proto != IPPROTO_TCP) {
			FUNC6(&adapter->pdev->dev, "Only TCP transport is supported\n");
			return -EINVAL;
		}
	}

	if (FUNC15(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
		struct flow_match_eth_addrs match;

		FUNC12(rule, &match);

		/* use is_broadcast and is_zero to check for all 0xf or 0 */
		if (!FUNC23(match.mask->dst)) {
			if (FUNC20(match.mask->dst)) {
				field_flags |= IAVF_CLOUD_FIELD_OMAC;
			} else {
				FUNC5(&adapter->pdev->dev, "Bad ether dest mask %pM\n",
					match.mask->dst);
				return IAVF_ERR_CONFIG;
			}
		}

		if (!FUNC23(match.mask->src)) {
			if (FUNC20(match.mask->src)) {
				field_flags |= IAVF_CLOUD_FIELD_IMAC;
			} else {
				FUNC5(&adapter->pdev->dev, "Bad ether src mask %pM\n",
					match.mask->src);
				return IAVF_ERR_CONFIG;
			}
		}

		if (!FUNC23(match.key->dst))
			if (FUNC22(match.key->dst) ||
			    FUNC21(match.key->dst)) {
				/* set the mask if a valid dst_mac address */
				for (i = 0; i < ETH_ALEN; i++)
					vf->mask.tcp_spec.dst_mac[i] |= 0xff;
				FUNC7(vf->data.tcp_spec.dst_mac,
						match.key->dst);
			}

		if (!FUNC23(match.key->src))
			if (FUNC22(match.key->src) ||
			    FUNC21(match.key->src)) {
				/* set the mask if a valid dst_mac address */
				for (i = 0; i < ETH_ALEN; i++)
					vf->mask.tcp_spec.src_mac[i] |= 0xff;
				FUNC7(vf->data.tcp_spec.src_mac,
						match.key->src);
		}
	}

	if (FUNC15(rule, FLOW_DISSECTOR_KEY_VLAN)) {
		struct flow_match_vlan match;

		FUNC17(rule, &match);
		if (match.mask->vlan_id) {
			if (match.mask->vlan_id == VLAN_VID_MASK) {
				field_flags |= IAVF_CLOUD_FIELD_IVLAN;
			} else {
				FUNC5(&adapter->pdev->dev, "Bad vlan mask %u\n",
					match.mask->vlan_id);
				return IAVF_ERR_CONFIG;
			}
		}
		vf->mask.tcp_spec.vlan_id |= FUNC3(0xffff);
		vf->data.tcp_spec.vlan_id = FUNC3(match.key->vlan_id);
	}

	if (FUNC15(rule, FLOW_DISSECTOR_KEY_CONTROL)) {
		struct flow_match_control match;

		FUNC10(rule, &match);
		addr_type = match.key->addr_type;
	}

	if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
		struct flow_match_ipv4_addrs match;

		FUNC13(rule, &match);
		if (match.mask->dst) {
			if (match.mask->dst == FUNC4(0xffffffff)) {
				field_flags |= IAVF_CLOUD_FIELD_IIP;
			} else {
				FUNC5(&adapter->pdev->dev, "Bad ip dst mask 0x%08x\n",
					FUNC2(match.mask->dst));
				return IAVF_ERR_CONFIG;
			}
		}

		if (match.mask->src) {
			if (match.mask->src == FUNC4(0xffffffff)) {
				field_flags |= IAVF_CLOUD_FIELD_IIP;
			} else {
				FUNC5(&adapter->pdev->dev, "Bad ip src mask 0x%08x\n",
					FUNC2(match.mask->dst));
				return IAVF_ERR_CONFIG;
			}
		}

		if (field_flags & IAVF_CLOUD_FIELD_TEN_ID) {
			FUNC6(&adapter->pdev->dev, "Tenant id not allowed for ip filter\n");
			return IAVF_ERR_CONFIG;
		}
		if (match.key->dst) {
			vf->mask.tcp_spec.dst_ip[0] |= FUNC4(0xffffffff);
			vf->data.tcp_spec.dst_ip[0] = match.key->dst;
		}
		if (match.key->src) {
			vf->mask.tcp_spec.src_ip[0] |= FUNC4(0xffffffff);
			vf->data.tcp_spec.src_ip[0] = match.key->src;
		}
	}

	if (addr_type == FLOW_DISSECTOR_KEY_IPV6_ADDRS) {
		struct flow_match_ipv6_addrs match;

		FUNC14(rule, &match);

		/* validate mask, make sure it is not IPV6_ADDR_ANY */
		if (FUNC18(&match.mask->dst)) {
			FUNC5(&adapter->pdev->dev, "Bad ipv6 dst mask 0x%02x\n",
				IPV6_ADDR_ANY);
			return IAVF_ERR_CONFIG;
		}

		/* src and dest IPv6 address should not be LOOPBACK
		 * (0:0:0:0:0:0:0:1) which can be represented as ::1
		 */
		if (FUNC19(&match.key->dst) ||
		    FUNC19(&match.key->src)) {
			FUNC5(&adapter->pdev->dev,
				"ipv6 addr should not be loopback\n");
			return IAVF_ERR_CONFIG;
		}
		if (!FUNC18(&match.mask->dst) ||
		    !FUNC18(&match.mask->src))
			field_flags |= IAVF_CLOUD_FIELD_IIP;

		for (i = 0; i < 4; i++)
			vf->mask.tcp_spec.dst_ip[i] |= FUNC4(0xffffffff);
		FUNC24(&vf->data.tcp_spec.dst_ip, &match.key->dst.s6_addr32,
		       sizeof(vf->data.tcp_spec.dst_ip));
		for (i = 0; i < 4; i++)
			vf->mask.tcp_spec.src_ip[i] |= FUNC4(0xffffffff);
		FUNC24(&vf->data.tcp_spec.src_ip, &match.key->src.s6_addr32,
		       sizeof(vf->data.tcp_spec.src_ip));
	}
	if (FUNC15(rule, FLOW_DISSECTOR_KEY_PORTS)) {
		struct flow_match_ports match;

		FUNC16(rule, &match);
		if (match.mask->src) {
			if (match.mask->src == FUNC3(0xffff)) {
				field_flags |= IAVF_CLOUD_FIELD_IIP;
			} else {
				FUNC5(&adapter->pdev->dev, "Bad src port mask %u\n",
					FUNC1(match.mask->src));
				return IAVF_ERR_CONFIG;
			}
		}

		if (match.mask->dst) {
			if (match.mask->dst == FUNC3(0xffff)) {
				field_flags |= IAVF_CLOUD_FIELD_IIP;
			} else {
				FUNC5(&adapter->pdev->dev, "Bad dst port mask %u\n",
					FUNC1(match.mask->dst));
				return IAVF_ERR_CONFIG;
			}
		}
		if (match.key->dst) {
			vf->mask.tcp_spec.dst_port |= FUNC3(0xffff);
			vf->data.tcp_spec.dst_port = match.key->dst;
		}

		if (match.key->src) {
			vf->mask.tcp_spec.src_port |= FUNC3(0xffff);
			vf->data.tcp_spec.src_port = match.key->src;
		}
	}
	vf->field_flags = field_flags;

	return 0;
}