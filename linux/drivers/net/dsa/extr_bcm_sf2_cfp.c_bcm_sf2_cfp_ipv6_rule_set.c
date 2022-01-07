
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
struct flow_match_ports {TYPE_12__* key; TYPE_7__* mask; } ;
struct flow_match_ipv6_addrs {TYPE_15__* mask; TYPE_11__* key; } ;
struct ethtool_rx_flow_spec_input {struct ethtool_rx_flow_spec* fs; } ;
struct TYPE_22__ {int * data; } ;
struct ethtool_rx_flow_spec {int flow_type; unsigned int location; TYPE_1__ m_ext; } ;
struct ethtool_rx_flow_rule {int rule; } ;
struct cfp_udf_layout {TYPE_8__* udfs; } ;
struct TYPE_23__ {int used; int unique; } ;
struct bcm_sf2_priv {TYPE_2__ cfp; int num_cfp_rules; } ;
struct TYPE_30__ {int u6_addr32; } ;
struct TYPE_29__ {int mask_value; int slices; } ;
struct TYPE_28__ {int src; } ;
struct TYPE_26__ {int u6_addr32; } ;
struct TYPE_27__ {TYPE_5__ in6_u; } ;
struct TYPE_24__ {int u6_addr32; } ;
struct TYPE_25__ {TYPE_3__ in6_u; } ;
struct TYPE_20__ {int u6_addr32; } ;
struct TYPE_19__ {TYPE_14__ in6_u; } ;
struct TYPE_21__ {TYPE_13__ dst; TYPE_6__ src; } ;
struct TYPE_18__ {int dst; int src; } ;
struct TYPE_16__ {TYPE_9__ in6_u; } ;
struct TYPE_17__ {TYPE_10__ dst; TYPE_4__ src; } ;


 int BIT (int) ;
 int CORE_CFP_CTL_REG ;
 int CORE_CFP_DATA_PORT (int) ;
 int CORE_CFP_MASK_PORT (int) ;
 int EINVAL ;
 int ENOSPC ;
 int FLOW_EXT ;
 int IPPROTO_SHIFT ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int IP_FRAG_SHIFT ;
 scalar_t__ IS_ERR (struct ethtool_rx_flow_rule*) ;
 int L3_FRAMING_SHIFT ;
 int OP_SEL_WRITE ;
 int PTR_ERR (struct ethtool_rx_flow_rule*) ;
 unsigned int RX_CLS_LOC_ANY ;
 unsigned int SLICE_NUM_MASK ;
 int TCAM_SEL ;

 unsigned int UDF_NUM_SLICES ;

 int XCESS_ADDR_MASK ;
 int bcm_sf2_cfp_act_pol_set (struct bcm_sf2_priv*,unsigned int,int,unsigned int,unsigned int,int) ;
 int bcm_sf2_cfp_op (struct bcm_sf2_priv*,int) ;
 int bcm_sf2_cfp_rule_addr_set (struct bcm_sf2_priv*,unsigned int) ;
 unsigned int bcm_sf2_cfp_rule_size (struct bcm_sf2_priv*) ;
 int bcm_sf2_cfp_slice_ipv6 (struct bcm_sf2_priv*,int ,int ,unsigned int,int) ;
 int bcm_sf2_cfp_udf_set (struct bcm_sf2_priv*,struct cfp_udf_layout const*,unsigned int) ;
 int bcm_sf2_get_num_udf_slices (int ) ;
 unsigned int bcm_sf2_get_slice_number (struct cfp_udf_layout const*,unsigned int) ;
 int be32_to_cpu (int ) ;
 int clear_bit (unsigned int,int ) ;
 int core_readl (struct bcm_sf2_priv*,int ) ;
 int core_writel (struct bcm_sf2_priv*,int,int ) ;
 struct ethtool_rx_flow_rule* ethtool_rx_flow_rule_create (struct ethtool_rx_flow_spec_input*) ;
 int ethtool_rx_flow_rule_destroy (struct ethtool_rx_flow_rule*) ;
 unsigned int find_first_zero_bit (int ,int ) ;
 int flow_rule_match_ipv6_addrs (int ,struct flow_match_ipv6_addrs*) ;
 int flow_rule_match_ports (int ,struct flow_match_ports*) ;
 int pr_err (char*,unsigned int) ;
 int set_bit (unsigned int,int ) ;
 int udf_lower_bits (int) ;
 struct cfp_udf_layout udf_tcpip6_layout ;
 int udf_upper_bits (int) ;

__attribute__((used)) static int bcm_sf2_cfp_ipv6_rule_set(struct bcm_sf2_priv *priv, int port,
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
 case 129:
  ip_proto = IPPROTO_TCP;
  break;
 case 128:
  ip_proto = IPPROTO_UDP;
  break;
 default:
  return -EINVAL;
 }

 ip_frag = be32_to_cpu(fs->m_ext.data[0]);

 layout = &udf_tcpip6_layout;
 slice_num = bcm_sf2_get_slice_number(layout, 0);
 if (slice_num == UDF_NUM_SLICES)
  return -EINVAL;

 num_udf = bcm_sf2_get_num_udf_slices(layout->udfs[slice_num].slices);
 if (fs->location == RX_CLS_LOC_ANY)
  rule_index[1] = find_first_zero_bit(priv->cfp.used,
          priv->num_cfp_rules);
 else
  rule_index[1] = fs->location;
 if (rule_index[1] > bcm_sf2_cfp_rule_size(priv))
  return -ENOSPC;




 set_bit(rule_index[1], priv->cfp.used);

 rule_index[0] = find_first_zero_bit(priv->cfp.used,
         priv->num_cfp_rules);
 if (rule_index[0] > bcm_sf2_cfp_rule_size(priv)) {
  ret = -ENOSPC;
  goto out_err;
 }

 input.fs = fs;
 flow = ethtool_rx_flow_rule_create(&input);
 if (IS_ERR(flow)) {
  ret = PTR_ERR(flow);
  goto out_err;
 }
 flow_rule_match_ipv6_addrs(flow->rule, &ipv6);
 flow_rule_match_ports(flow->rule, &ports);


 bcm_sf2_cfp_udf_set(priv, layout, slice_num);


 core_writel(priv, BIT(port), CORE_CFP_DATA_PORT(7));


 core_writel(priv, 0xff, CORE_CFP_MASK_PORT(7));
 reg = 1 << L3_FRAMING_SHIFT | ip_proto << IPPROTO_SHIFT |
  ip_frag << IP_FRAG_SHIFT | udf_upper_bits(num_udf);
 core_writel(priv, reg, CORE_CFP_DATA_PORT(6));




 reg = layout->udfs[slice_num].mask_value | udf_upper_bits(num_udf);
 core_writel(priv, reg, CORE_CFP_MASK_PORT(6));





 core_writel(priv, udf_lower_bits(num_udf) << 24, CORE_CFP_DATA_PORT(5));


 core_writel(priv, udf_lower_bits(num_udf) << 24, CORE_CFP_MASK_PORT(5));


 bcm_sf2_cfp_slice_ipv6(priv, ipv6.key->src.in6_u.u6_addr32,
          ports.key->src, slice_num, 0);
 bcm_sf2_cfp_slice_ipv6(priv, ipv6.mask->src.in6_u.u6_addr32,
          ports.mask->src, SLICE_NUM_MASK, 1);


 bcm_sf2_cfp_rule_addr_set(priv, rule_index[0]);

 ret = bcm_sf2_cfp_op(priv, OP_SEL_WRITE | TCAM_SEL);
 if (ret) {
  pr_err("TCAM entry at addr %d failed\n", rule_index[0]);
  goto out_err_flow_rule;
 }


 ret = bcm_sf2_cfp_act_pol_set(priv, rule_index[0], port, port_num,
          queue_num, 0);
 if (ret)
  goto out_err_flow_rule;


 slice_num = bcm_sf2_get_slice_number(layout, slice_num + 1);
 if (slice_num == UDF_NUM_SLICES) {
  ret = -EINVAL;
  goto out_err_flow_rule;
 }

 num_udf = bcm_sf2_get_num_udf_slices(layout->udfs[slice_num].slices);


 bcm_sf2_cfp_udf_set(priv, layout, slice_num);




 core_writel(priv, 0, CORE_CFP_DATA_PORT(7));
 core_writel(priv, 0, CORE_CFP_MASK_PORT(7));
 reg = rule_index[0] << 24 | udf_upper_bits(num_udf) << 16 |
  udf_lower_bits(num_udf) << 8;
 core_writel(priv, reg, CORE_CFP_DATA_PORT(6));


 reg = XCESS_ADDR_MASK << 24 | udf_upper_bits(num_udf) << 16 |
  udf_lower_bits(num_udf) << 8;
 core_writel(priv, reg, CORE_CFP_MASK_PORT(6));


 core_writel(priv, 0, CORE_CFP_DATA_PORT(5));


 core_writel(priv, 0, CORE_CFP_MASK_PORT(5));

 bcm_sf2_cfp_slice_ipv6(priv, ipv6.key->dst.in6_u.u6_addr32,
          ports.key->dst, slice_num, 0);
 bcm_sf2_cfp_slice_ipv6(priv, ipv6.mask->dst.in6_u.u6_addr32,
          ports.key->dst, SLICE_NUM_MASK, 1);


 bcm_sf2_cfp_rule_addr_set(priv, rule_index[1]);

 ret = bcm_sf2_cfp_op(priv, OP_SEL_WRITE | TCAM_SEL);
 if (ret) {
  pr_err("TCAM entry at addr %d failed\n", rule_index[1]);
  goto out_err_flow_rule;
 }




 ret = bcm_sf2_cfp_act_pol_set(priv, rule_index[1], port, port_num,
          queue_num, 1);
 if (ret)
  goto out_err_flow_rule;


 reg = core_readl(priv, CORE_CFP_CTL_REG);
 reg |= BIT(port);
 core_writel(priv, reg, CORE_CFP_CTL_REG);




 set_bit(rule_index[0], priv->cfp.used);
 set_bit(rule_index[1], priv->cfp.unique);
 fs->location = rule_index[1];

 return ret;

out_err_flow_rule:
 ethtool_rx_flow_rule_destroy(flow);
out_err:
 clear_bit(rule_index[1], priv->cfp.used);
 return ret;
}
