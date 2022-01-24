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
typedef  int u8 ;
typedef  int u32 ;
struct flow_match_ports {int /*<<< orphan*/  mask; int /*<<< orphan*/  key; } ;
struct flow_match_ipv4_addrs {int /*<<< orphan*/  mask; int /*<<< orphan*/  key; } ;
struct flow_match_ip {TYPE_2__* key; } ;
struct ethtool_rx_flow_spec_input {struct ethtool_rx_flow_spec* fs; } ;
struct TYPE_5__ {int /*<<< orphan*/ * data; } ;
struct ethtool_rx_flow_spec {int flow_type; unsigned int location; TYPE_1__ m_ext; } ;
struct ethtool_rx_flow_rule {int /*<<< orphan*/  rule; } ;
struct cfp_udf_layout {TYPE_3__* udfs; } ;
struct TYPE_8__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  used; } ;
struct bcm_sf2_priv {TYPE_4__ cfp; int /*<<< orphan*/  num_cfp_rules; } ;
struct TYPE_7__ {int mask_value; int /*<<< orphan*/  slices; } ;
struct TYPE_6__ {int tos; } ;

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
 int IPTOS_SHIFT ; 
 int IP_FRAG_SHIFT ; 
 scalar_t__ FUNC3 (struct ethtool_rx_flow_rule*) ; 
 int OP_SEL_WRITE ; 
 int FUNC4 (struct ethtool_rx_flow_rule*) ; 
 unsigned int RX_CLS_LOC_ANY ; 
 unsigned int SLICE_NUM_MASK ; 
 int TCAM_SEL ; 
#define  TCP_V4_FLOW 129 
 unsigned int UDF_NUM_SLICES ; 
#define  UDP_V4_FLOW 128 
 int FUNC5 (struct bcm_sf2_priv*,unsigned int,int,unsigned int,unsigned int,int) ; 
 int FUNC6 (struct bcm_sf2_priv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_sf2_priv*,unsigned int) ; 
 unsigned int FUNC8 (struct bcm_sf2_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct bcm_sf2_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bcm_sf2_priv*,struct cfp_udf_layout const*,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct cfp_udf_layout const*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct bcm_sf2_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bcm_sf2_priv*,int,int /*<<< orphan*/ ) ; 
 struct ethtool_rx_flow_rule* FUNC16 (struct ethtool_rx_flow_spec_input*) ; 
 int /*<<< orphan*/  FUNC17 (struct ethtool_rx_flow_rule*) ; 
 unsigned int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct flow_match_ip*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct flow_match_ipv4_addrs*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct flow_match_ports*) ; 
 int /*<<< orphan*/  FUNC22 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC24 (int) ; 
 struct cfp_udf_layout udf_tcpip4_layout ; 
 int FUNC25 (int) ; 

__attribute__((used)) static int FUNC26(struct bcm_sf2_priv *priv, int port,
				     unsigned int port_num,
				     unsigned int queue_num,
				     struct ethtool_rx_flow_spec *fs)
{
	struct ethtool_rx_flow_spec_input input = {};
	const struct cfp_udf_layout *layout;
	unsigned int slice_num, rule_index;
	struct ethtool_rx_flow_rule *flow;
	struct flow_match_ipv4_addrs ipv4;
	struct flow_match_ports ports;
	struct flow_match_ip ip;
	u8 ip_proto, ip_frag;
	u8 num_udf;
	u32 reg;
	int ret;

	switch (fs->flow_type & ~FLOW_EXT) {
	case TCP_V4_FLOW:
		ip_proto = IPPROTO_TCP;
		break;
	case UDP_V4_FLOW:
		ip_proto = IPPROTO_UDP;
		break;
	default:
		return -EINVAL;
	}

	ip_frag = FUNC13(fs->m_ext.data[0]);

	/* Locate the first rule available */
	if (fs->location == RX_CLS_LOC_ANY)
		rule_index = FUNC18(priv->cfp.used,
						 priv->num_cfp_rules);
	else
		rule_index = fs->location;

	if (rule_index > FUNC8(priv))
		return -ENOSPC;

	input.fs = fs;
	flow = FUNC16(&input);
	if (FUNC3(flow))
		return FUNC4(flow);

	FUNC20(flow->rule, &ipv4);
	FUNC21(flow->rule, &ports);
	FUNC19(flow->rule, &ip);

	layout = &udf_tcpip4_layout;
	/* We only use one UDF slice for now */
	slice_num = FUNC12(layout, 0);
	if (slice_num == UDF_NUM_SLICES) {
		ret = -EINVAL;
		goto out_err_flow_rule;
	}

	num_udf = FUNC11(layout->udfs[slice_num].slices);

	/* Apply the UDF layout for this filter */
	FUNC10(priv, layout, slice_num);

	/* Apply to all packets received through this port */
	FUNC15(priv, FUNC0(port), FUNC1(7));

	/* Source port map match */
	FUNC15(priv, 0xff, FUNC2(7));

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
	FUNC15(priv, ip.key->tos << IPTOS_SHIFT |
		    ip_proto << IPPROTO_SHIFT | ip_frag << IP_FRAG_SHIFT |
		    FUNC25(num_udf),
		    FUNC1(6));

	/* Mask with the specific layout for IPv4 packets */
	FUNC15(priv, layout->udfs[slice_num].mask_value |
		    FUNC25(num_udf), FUNC2(6));

	/* UDF_Valid[7:0]	[31:24]
	 * S-Tag		[23:8]
	 * C-Tag		[7:0]
	 */
	FUNC15(priv, FUNC24(num_udf) << 24, FUNC1(5));

	/* Mask all but valid UDFs */
	FUNC15(priv, FUNC24(num_udf) << 24, FUNC2(5));

	/* Program the match and the mask */
	FUNC9(priv, ipv4.key, ports.key, slice_num, false);
	FUNC9(priv, ipv4.mask, ports.mask, SLICE_NUM_MASK, true);

	/* Insert into TCAM now */
	FUNC7(priv, rule_index);

	ret = FUNC6(priv, OP_SEL_WRITE | TCAM_SEL);
	if (ret) {
		FUNC22("TCAM entry at addr %d failed\n", rule_index);
		goto out_err_flow_rule;
	}

	/* Insert into Action and policer RAMs now */
	ret = FUNC5(priv, rule_index, port, port_num,
				      queue_num, true);
	if (ret)
		goto out_err_flow_rule;

	/* Turn on CFP for this rule now */
	reg = FUNC14(priv, CORE_CFP_CTL_REG);
	reg |= FUNC0(port);
	FUNC15(priv, reg, CORE_CFP_CTL_REG);

	/* Flag the rule as being used and return it */
	FUNC23(rule_index, priv->cfp.used);
	FUNC23(rule_index, priv->cfp.unique);
	fs->location = rule_index;

	return 0;

out_err_flow_rule:
	FUNC17(flow);
	return ret;
}