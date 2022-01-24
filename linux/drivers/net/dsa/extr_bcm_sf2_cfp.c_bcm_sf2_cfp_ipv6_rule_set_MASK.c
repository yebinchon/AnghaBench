#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_15__ ;
typedef  struct TYPE_20__   TYPE_14__ ;
typedef  struct TYPE_19__   TYPE_13__ ;
typedef  struct TYPE_18__   TYPE_12__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct flow_match_ports {TYPE_12__* key; TYPE_7__* mask; } ;
struct flow_match_ipv6_addrs {TYPE_15__* mask; TYPE_11__* key; } ;
struct ethtool_rx_flow_spec_input {struct ethtool_rx_flow_spec* fs; } ;
struct TYPE_22__ {int /*<<< orphan*/ * data; } ;
struct ethtool_rx_flow_spec {int flow_type; unsigned int location; TYPE_1__ m_ext; } ;
struct ethtool_rx_flow_rule {int /*<<< orphan*/  rule; } ;
struct cfp_udf_layout {TYPE_8__* udfs; } ;
struct TYPE_23__ {int /*<<< orphan*/  used; int /*<<< orphan*/  unique; } ;
struct bcm_sf2_priv {TYPE_2__ cfp; int /*<<< orphan*/  num_cfp_rules; } ;
struct TYPE_30__ {int /*<<< orphan*/  u6_addr32; } ;
struct TYPE_29__ {int mask_value; int /*<<< orphan*/  slices; } ;
struct TYPE_28__ {int /*<<< orphan*/  src; } ;
struct TYPE_26__ {int /*<<< orphan*/  u6_addr32; } ;
struct TYPE_27__ {TYPE_5__ in6_u; } ;
struct TYPE_24__ {int /*<<< orphan*/  u6_addr32; } ;
struct TYPE_25__ {TYPE_3__ in6_u; } ;
struct TYPE_20__ {int /*<<< orphan*/  u6_addr32; } ;
struct TYPE_19__ {TYPE_14__ in6_u; } ;
struct TYPE_21__ {TYPE_13__ dst; TYPE_6__ src; } ;
struct TYPE_18__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_16__ {TYPE_9__ in6_u; } ;
struct TYPE_17__ {TYPE_10__ dst; TYPE_4__ src; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CORE_CFP_CTL_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 
 int ENOSPC ; 
 int FLOW_EXT ; 
 int IPPROTO_SHIFT ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int IP_FRAG_SHIFT ; 
 scalar_t__ FUNC3 (struct ethtool_rx_flow_rule*) ; 
 int L3_FRAMING_SHIFT ; 
 int OP_SEL_WRITE ; 
 int FUNC4 (struct ethtool_rx_flow_rule*) ; 
 unsigned int RX_CLS_LOC_ANY ; 
 unsigned int SLICE_NUM_MASK ; 
 int TCAM_SEL ; 
#define  TCP_V6_FLOW 129 
 unsigned int UDF_NUM_SLICES ; 
#define  UDP_V6_FLOW 128 
 int XCESS_ADDR_MASK ; 
 int FUNC5 (struct bcm_sf2_priv*,unsigned int,int,unsigned int,unsigned int,int) ; 
 int FUNC6 (struct bcm_sf2_priv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_sf2_priv*,unsigned int) ; 
 unsigned int FUNC8 (struct bcm_sf2_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct bcm_sf2_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bcm_sf2_priv*,struct cfp_udf_layout const*,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct cfp_udf_layout const*,unsigned int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct bcm_sf2_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct bcm_sf2_priv*,int,int /*<<< orphan*/ ) ; 
 struct ethtool_rx_flow_rule* FUNC17 (struct ethtool_rx_flow_spec_input*) ; 
 int /*<<< orphan*/  FUNC18 (struct ethtool_rx_flow_rule*) ; 
 unsigned int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct flow_match_ipv6_addrs*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct flow_match_ports*) ; 
 int /*<<< orphan*/  FUNC22 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC24 (int) ; 
 struct cfp_udf_layout udf_tcpip6_layout ; 
 int FUNC25 (int) ; 

__attribute__((used)) static int FUNC26(struct bcm_sf2_priv *priv, int port,
				     unsigned int port_num,
				     unsigned int queue_num,
				     struct ethtool_rx_flow_spec *fs)
{
	struct ethtool_rx_flow_spec_input input = {};
	unsigned int slice_num, rule_index[2];
	const struct cfp_udf_layout *layout;
	struct ethtool_rx_flow_rule *flow;
	struct flow_match_ipv6_addrs ipv6;
	struct flow_match_ports ports;
	u8 ip_proto, ip_frag;
	int ret = 0;
	u8 num_udf;
	u32 reg;

	switch (fs->flow_type & ~FLOW_EXT) {
	case TCP_V6_FLOW:
		ip_proto = IPPROTO_TCP;
		break;
	case UDP_V6_FLOW:
		ip_proto = IPPROTO_UDP;
		break;
	default:
		return -EINVAL;
	}

	ip_frag = FUNC13(fs->m_ext.data[0]);

	layout = &udf_tcpip6_layout;
	slice_num = FUNC12(layout, 0);
	if (slice_num == UDF_NUM_SLICES)
		return -EINVAL;

	num_udf = FUNC11(layout->udfs[slice_num].slices);

	/* Negotiate two indexes, one for the second half which we are chained
	 * from, which is what we will return to user-space, and a second one
	 * which is used to store its first half. That first half does not
	 * allow any choice of placement, so it just needs to find the next
	 * available bit. We return the second half as fs->location because
	 * that helps with the rule lookup later on since the second half is
	 * chained from its first half, we can easily identify IPv6 CFP rules
	 * by looking whether they carry a CHAIN_ID.
	 *
	 * We also want the second half to have a lower rule_index than its
	 * first half because the HW search is by incrementing addresses.
	 */
	if (fs->location == RX_CLS_LOC_ANY)
		rule_index[1] = FUNC19(priv->cfp.used,
						    priv->num_cfp_rules);
	else
		rule_index[1] = fs->location;
	if (rule_index[1] > FUNC8(priv))
		return -ENOSPC;

	/* Flag it as used (cleared on error path) such that we can immediately
	 * obtain a second one to chain from.
	 */
	FUNC23(rule_index[1], priv->cfp.used);

	rule_index[0] = FUNC19(priv->cfp.used,
					    priv->num_cfp_rules);
	if (rule_index[0] > FUNC8(priv)) {
		ret = -ENOSPC;
		goto out_err;
	}

	input.fs = fs;
	flow = FUNC17(&input);
	if (FUNC3(flow)) {
		ret = FUNC4(flow);
		goto out_err;
	}
	FUNC20(flow->rule, &ipv6);
	FUNC21(flow->rule, &ports);

	/* Apply the UDF layout for this filter */
	FUNC10(priv, layout, slice_num);

	/* Apply to all packets received through this port */
	FUNC16(priv, FUNC0(port), FUNC1(7));

	/* Source port map match */
	FUNC16(priv, 0xff, FUNC2(7));

	/* S-Tag status		[31:30]
	 * C-Tag status		[29:28]
	 * L2 framing		[27:26]
	 * L3 framing		[25:24]
	 * IP ToS		[23:16]
	 * IP proto		[15:08]
	 * IP Fragm		[7]
	 * Non 1st frag		[6]
	 * IP Authen		[5]
	 * TTL range		[4:3]
	 * PPPoE session	[2]
	 * Reserved		[1]
	 * UDF_Valid[8]		[0]
	 */
	reg = 1 << L3_FRAMING_SHIFT | ip_proto << IPPROTO_SHIFT |
		ip_frag << IP_FRAG_SHIFT | FUNC25(num_udf);
	FUNC16(priv, reg, FUNC1(6));

	/* Mask with the specific layout for IPv6 packets including
	 * UDF_Valid[8]
	 */
	reg = layout->udfs[slice_num].mask_value | FUNC25(num_udf);
	FUNC16(priv, reg, FUNC2(6));

	/* UDF_Valid[7:0]	[31:24]
	 * S-Tag		[23:8]
	 * C-Tag		[7:0]
	 */
	FUNC16(priv, FUNC24(num_udf) << 24, FUNC1(5));

	/* Mask all but valid UDFs */
	FUNC16(priv, FUNC24(num_udf) << 24, FUNC2(5));

	/* Slice the IPv6 source address and port */
	FUNC9(priv, ipv6.key->src.in6_u.u6_addr32,
			       ports.key->src, slice_num, false);
	FUNC9(priv, ipv6.mask->src.in6_u.u6_addr32,
			       ports.mask->src, SLICE_NUM_MASK, true);

	/* Insert into TCAM now because we need to insert a second rule */
	FUNC7(priv, rule_index[0]);

	ret = FUNC6(priv, OP_SEL_WRITE | TCAM_SEL);
	if (ret) {
		FUNC22("TCAM entry at addr %d failed\n", rule_index[0]);
		goto out_err_flow_rule;
	}

	/* Insert into Action and policer RAMs now */
	ret = FUNC5(priv, rule_index[0], port, port_num,
				      queue_num, false);
	if (ret)
		goto out_err_flow_rule;

	/* Now deal with the second slice to chain this rule */
	slice_num = FUNC12(layout, slice_num + 1);
	if (slice_num == UDF_NUM_SLICES) {
		ret = -EINVAL;
		goto out_err_flow_rule;
	}

	num_udf = FUNC11(layout->udfs[slice_num].slices);

	/* Apply the UDF layout for this filter */
	FUNC10(priv, layout, slice_num);

	/* Chained rule, source port match is coming from the rule we are
	 * chained from.
	 */
	FUNC16(priv, 0, FUNC1(7));
	FUNC16(priv, 0, FUNC2(7));

	/*
	 * CHAIN ID		[31:24] chain to previous slice
	 * Reserved		[23:20]
	 * UDF_Valid[11:8]	[19:16]
	 * UDF_Valid[7:0]	[15:8]
	 * UDF_n_D11		[7:0]
	 */
	reg = rule_index[0] << 24 | FUNC25(num_udf) << 16 |
		FUNC24(num_udf) << 8;
	FUNC16(priv, reg, FUNC1(6));

	/* Mask all except chain ID, UDF Valid[8] and UDF Valid[7:0] */
	reg = XCESS_ADDR_MASK << 24 | FUNC25(num_udf) << 16 |
		FUNC24(num_udf) << 8;
	FUNC16(priv, reg, FUNC2(6));

	/* Don't care */
	FUNC16(priv, 0, FUNC1(5));

	/* Mask all */
	FUNC16(priv, 0, FUNC2(5));

	FUNC9(priv, ipv6.key->dst.in6_u.u6_addr32,
			       ports.key->dst, slice_num, false);
	FUNC9(priv, ipv6.mask->dst.in6_u.u6_addr32,
			       ports.key->dst, SLICE_NUM_MASK, true);

	/* Insert into TCAM now */
	FUNC7(priv, rule_index[1]);

	ret = FUNC6(priv, OP_SEL_WRITE | TCAM_SEL);
	if (ret) {
		FUNC22("TCAM entry at addr %d failed\n", rule_index[1]);
		goto out_err_flow_rule;
	}

	/* Insert into Action and policer RAMs now, set chain ID to
	 * the one we are chained to
	 */
	ret = FUNC5(priv, rule_index[1], port, port_num,
				      queue_num, true);
	if (ret)
		goto out_err_flow_rule;

	/* Turn on CFP for this rule now */
	reg = FUNC15(priv, CORE_CFP_CTL_REG);
	reg |= FUNC0(port);
	FUNC16(priv, reg, CORE_CFP_CTL_REG);

	/* Flag the second half rule as being used now, return it as the
	 * location, and flag it as unique while dumping rules
	 */
	FUNC23(rule_index[0], priv->cfp.used);
	FUNC23(rule_index[1], priv->cfp.unique);
	fs->location = rule_index[1];

	return ret;

out_err_flow_rule:
	FUNC18(flow);
out_err:
	FUNC14(rule_index[1], priv->cfp.used);
	return ret;
}