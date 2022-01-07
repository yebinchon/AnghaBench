
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct flow_match_ports {int mask; int key; } ;
struct flow_match_ipv4_addrs {int mask; int key; } ;
struct flow_match_ip {TYPE_2__* key; } ;
struct ethtool_rx_flow_spec_input {struct ethtool_rx_flow_spec* fs; } ;
struct TYPE_5__ {int * data; } ;
struct ethtool_rx_flow_spec {int flow_type; unsigned int location; TYPE_1__ m_ext; } ;
struct ethtool_rx_flow_rule {int rule; } ;
struct cfp_udf_layout {TYPE_3__* udfs; } ;
struct TYPE_8__ {int unique; int used; } ;
struct bcm_sf2_priv {TYPE_4__ cfp; int num_cfp_rules; } ;
struct TYPE_7__ {int mask_value; int slices; } ;
struct TYPE_6__ {int tos; } ;


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
 int IPTOS_SHIFT ;
 int IP_FRAG_SHIFT ;
 scalar_t__ IS_ERR (struct ethtool_rx_flow_rule*) ;
 int OP_SEL_WRITE ;
 int PTR_ERR (struct ethtool_rx_flow_rule*) ;
 unsigned int RX_CLS_LOC_ANY ;
 unsigned int SLICE_NUM_MASK ;
 int TCAM_SEL ;

 unsigned int UDF_NUM_SLICES ;

 int bcm_sf2_cfp_act_pol_set (struct bcm_sf2_priv*,unsigned int,int,unsigned int,unsigned int,int) ;
 int bcm_sf2_cfp_op (struct bcm_sf2_priv*,int) ;
 int bcm_sf2_cfp_rule_addr_set (struct bcm_sf2_priv*,unsigned int) ;
 unsigned int bcm_sf2_cfp_rule_size (struct bcm_sf2_priv*) ;
 int bcm_sf2_cfp_slice_ipv4 (struct bcm_sf2_priv*,int ,int ,unsigned int,int) ;
 int bcm_sf2_cfp_udf_set (struct bcm_sf2_priv*,struct cfp_udf_layout const*,unsigned int) ;
 int bcm_sf2_get_num_udf_slices (int ) ;
 unsigned int bcm_sf2_get_slice_number (struct cfp_udf_layout const*,int ) ;
 int be32_to_cpu (int ) ;
 int core_readl (struct bcm_sf2_priv*,int ) ;
 int core_writel (struct bcm_sf2_priv*,int,int ) ;
 struct ethtool_rx_flow_rule* ethtool_rx_flow_rule_create (struct ethtool_rx_flow_spec_input*) ;
 int ethtool_rx_flow_rule_destroy (struct ethtool_rx_flow_rule*) ;
 unsigned int find_first_zero_bit (int ,int ) ;
 int flow_rule_match_ip (int ,struct flow_match_ip*) ;
 int flow_rule_match_ipv4_addrs (int ,struct flow_match_ipv4_addrs*) ;
 int flow_rule_match_ports (int ,struct flow_match_ports*) ;
 int pr_err (char*,unsigned int) ;
 int set_bit (unsigned int,int ) ;
 int udf_lower_bits (int) ;
 struct cfp_udf_layout udf_tcpip4_layout ;
 int udf_upper_bits (int) ;

__attribute__((used)) static int bcm_sf2_cfp_ipv4_rule_set(struct bcm_sf2_priv *priv, int port,
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


 if (fs->location == RX_CLS_LOC_ANY)
  rule_index = find_first_zero_bit(priv->cfp.used,
       priv->num_cfp_rules);
 else
  rule_index = fs->location;

 if (rule_index > bcm_sf2_cfp_rule_size(priv))
  return -ENOSPC;

 input.fs = fs;
 flow = ethtool_rx_flow_rule_create(&input);
 if (IS_ERR(flow))
  return PTR_ERR(flow);

 flow_rule_match_ipv4_addrs(flow->rule, &ipv4);
 flow_rule_match_ports(flow->rule, &ports);
 flow_rule_match_ip(flow->rule, &ip);

 layout = &udf_tcpip4_layout;

 slice_num = bcm_sf2_get_slice_number(layout, 0);
 if (slice_num == UDF_NUM_SLICES) {
  ret = -EINVAL;
  goto out_err_flow_rule;
 }

 num_udf = bcm_sf2_get_num_udf_slices(layout->udfs[slice_num].slices);


 bcm_sf2_cfp_udf_set(priv, layout, slice_num);


 core_writel(priv, BIT(port), CORE_CFP_DATA_PORT(7));


 core_writel(priv, 0xff, CORE_CFP_MASK_PORT(7));
 core_writel(priv, ip.key->tos << IPTOS_SHIFT |
      ip_proto << IPPROTO_SHIFT | ip_frag << IP_FRAG_SHIFT |
      udf_upper_bits(num_udf),
      CORE_CFP_DATA_PORT(6));


 core_writel(priv, layout->udfs[slice_num].mask_value |
      udf_upper_bits(num_udf), CORE_CFP_MASK_PORT(6));





 core_writel(priv, udf_lower_bits(num_udf) << 24, CORE_CFP_DATA_PORT(5));


 core_writel(priv, udf_lower_bits(num_udf) << 24, CORE_CFP_MASK_PORT(5));


 bcm_sf2_cfp_slice_ipv4(priv, ipv4.key, ports.key, slice_num, 0);
 bcm_sf2_cfp_slice_ipv4(priv, ipv4.mask, ports.mask, SLICE_NUM_MASK, 1);


 bcm_sf2_cfp_rule_addr_set(priv, rule_index);

 ret = bcm_sf2_cfp_op(priv, OP_SEL_WRITE | TCAM_SEL);
 if (ret) {
  pr_err("TCAM entry at addr %d failed\n", rule_index);
  goto out_err_flow_rule;
 }


 ret = bcm_sf2_cfp_act_pol_set(priv, rule_index, port, port_num,
          queue_num, 1);
 if (ret)
  goto out_err_flow_rule;


 reg = core_readl(priv, CORE_CFP_CTL_REG);
 reg |= BIT(port);
 core_writel(priv, reg, CORE_CFP_CTL_REG);


 set_bit(rule_index, priv->cfp.used);
 set_bit(rule_index, priv->cfp.unique);
 fs->location = rule_index;

 return 0;

out_err_flow_rule:
 ethtool_rx_flow_rule_destroy(flow);
 return ret;
}
